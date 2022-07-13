/// mojang
authenticate(){
  const req =
  '''
{
    "agent": {                              // 默认为Minecraft
        "name": "Minecraft",                // 对于Mojang的其他游戏Scrolls，则应该使用"Scrolls"
        "version": 1                        // 以后的原版客户端
                                            // 可能会增加该数字
    },
    "username": "mojang帐号名",              // 可以是电子邮箱地址或
                                            // 玩家名称（对于为迁移的账号）
    "password": "mojang帐号密码",
    "clientToken": "客户端标识符",            // 可选的
    "requestUser": true                     // 可选的，默认为false，若为true则将user对象加入到响应中
}
''';
  const rsp =
  '''
{
    "accessToken": "随机访问令牌",               // 十六进制或JSON-Web-Token（未确认）[普通accessToken可以在JWT的响应中找到（使用‘.’分隔的第二部分，以Base64编码的JSON对象），在“yggt”键中]
    "clientToken": "客户端标识符",               // 与接收到的相同
    "availableProfiles": [                     // 仅在接收到agent字段时出现
        {
            "agent": "minecraft",              // 可能与之前值相同
            "id": "档案标识符",                  // 十六进制
            "name": "玩家名称",
            "userId": "十六进制字符串",
            "createdAt": 1325376000000,        // 自1970年1月1日起的毫秒数
            "legacyProfile": true或false,      // 即使为false也出现
            "suspended": true或false,          // 可能为false
            "paid": true或false,               // 可能为true
            "migrated": true或false,         // 似乎即使是已迁移账号也为false…？（https://bugs.mojang.com/browse/WEB-1461）
            "legacy": true或false              // 它仅为true时出现。默认为false。与较新的legacyProfile重复…
        }
    ],
    "selectedProfile": {                       // 仅在接收到agent字段时出现
        "id": "不含分隔符的uuid",
        "name": "玩家名称",
        "userId": "十六进制字符串",
        "createdAt": 1325376000000,
        "legacyProfile": true或false,
        "suspended": true或false,
        "paid": true或false,
        "migrated": true或false,
        "legacy": true或false
    },
    "user": {                                  // 仅在请求负载中的requestUser为true出现
        "id": "用户标识符",                      // 十六进制
        "email": "user@email.example",         // 未迁移账号的哈希（？）值
        "username": "user@email.example",      // 未迁移账号的正常名称或已迁移账号的电子邮箱
        "registerIp": "198.51.100.*",          // 最后一位打码的IP地址
        "migratedFrom": "minecraft.net",
        "migratedAt": 1420070400000,
        "registeredAt": 1325376000000,         // 也许比profile的createdAt要早几分钟
        "passwordChangedAt": 1569888000000,
        "dateOfBirth": -2208988800000,
        "suspended": false,
        "blocked": false,
        "secured": true,
        "migrated": false,                     // 似乎即使migratedAt和migratedFrom出现时也为false…
        "emailVerified": true,
        "legacyUser": false,
        "verifiedByParent": false,
        "properties": [
            {
                "name": "preferredLanguage",   // 也许不会对所有账号显示
                "value": "en"                  // Java locale格式 （https://docs.oracle.com/javase/8/docs/api/java/util/Locale.html#toString--）
            },
            {
                "name": "twitch_access_token", // 仅在关联twitch账号时出现（见https://account.mojang.com/me/settings）
                "value": "twitch oauth token"  // OAuth 2.0令牌，字母+数字，如https://api.twitch.tv/kraken?oauth_token=[...]
                                               // Twitch API的文档：https://github.com/justintv/Twitch-API
            }
        ]
    }
}
''';
}
validate(){
const req = '''
 {
    "accessToken": "valid accessToken",
    "clientToken": "associated clientToken" //可选的
 }
''';
  // 若成功返回空响应（204 No Content），否则返回错误JSON和状态码403 Forbidden。
}
refresh(){
  const req = '''
{
    "accessToken": "有效的accessToken",
    "clientToken": "客户端标识符",         // 这需要与第一处用来获取
                                         // accessToken的那个相同
    "selectedProfile": {                 // 可选的，发送它将导致错误
        "id": "档案标识符",                // 十六进制
        "name": "玩家名称"
    },
    "requestUser": true                  // 可选的，默认为false，若为true则将user对象加入到响应中
}
  ''';
  const rsp = '''
{
    "accessToken": "随机访问令牌",               // 十六进制
    "clientToken": "客户端标识符",               // 与接收到的相同
    "selectedProfile": {
        "id": "档案标识符",                      // 十六进制
        "name": "玩家名称"
    },
    "user": {                                  // 仅在请求负载中的requestUser为true出现
        "id": "用户标识符",                      // 十六进制
        "properties": [
            {
                "name": "preferredLanguage",   // 也许不会对所有账号显示
                "value": "en"                  // Java locale格式（https://docs.oracle.com/javase/8/docs/api/java/util/Locale.html#toString--）
            },
            {
                "name": "twitch_access_token", // 仅在关联twitch账号时出现（见https://account.mojang.com/me/settings）
                "value": "twitch oauth token"  // OAuth 2.0令牌，字母+数字，如https://api.twitch.tv/kraken?oauth_token=[...]
                                               // Twitch API的文档：https://github.com/justintv/Twitch-API
            }
        ]
    }
}
  ''';
}
signOut(){
  const req = '''
{
    "username": "mojang帐号名称",
    "password": "mojang帐号密码"
}
  ''';
  // 若成功返回一个空负载。
}

/// Microsoft
