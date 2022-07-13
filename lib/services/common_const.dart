/// mojang
const mojangHost = "https://authserver.mojang.com";
/// 使用密码认证用户。
const authenticate = "/authenticate";
/// 检查accessToken是否可用于Minecraft服务器的认证。Minecraft启动器（自1.6.13版本起）
/// 会在启动器调用此端点来验证保存的令牌是否仍然可用，并会在返回错误时调用/refresh。
///
/// 请注意accessToken可能会不可用与Minecraft服务器的认证，而对于/refresh来说足够可用。
/// 这主要会发生在一个人使用了另一个客户端（如在别的PC上使用相同的帐号游玩了Minecraft）。
/// 看起来只有给定帐号最新获得的accessToken才能可靠地用于认证（第二新的令牌看起来也仍然有效，但请不要依赖它）。
///
/// /validate可以在有或没有clientToken时调用。如果提供了clientToken，
/// 它应当与获取accessToken的那个相匹配。Minecraft启动器会向/validate发送clientToken。
const validate = "/validate";
///刷新一个有效的accessToken。它可以用于在游戏会话间保持登录状态，这优于在文件中保存用户的密码（见lastlogin）。
const refresh = "/refresh";
///使用client/access令牌对使accessToken失效。
///使用帐号的用户名和密码使accessToken失效。
const signOut = "/signout";



/// Microsoft Oauth 获取授权码
const microsoftOauthUrl = "https://login.live.com/oauth20_authorize.srf?client_id=00000000402b5328&response_type=code&scope=service%3A%3Auser.auth.xboxlive.com%3A%3AMBI_SSL&redirect_uri=https%3A%2F%2Flogin.live.com%2Foauth20_desktop.srf";
/// 重定向 Url
const  redirectUrl = "https://login.live.com/oauth20_desktop.srf?code=codegoeshere&lc=1033";
/// 获取 access_token
///
/// Content-Type: application/x-www-form-urlencoded
///
/// req
///
/// "client_id", "00000000402b5328", // 还是Minecraft客户端id
///
/// "code", authcode, // 第一步中获取的代码
///
/// "grant_type", "authorization_code",
///
/// "redirect_uri", "https://login.live.com/oauth20_desktop.srf",
///
/// "scope", "service::user.auth.xboxlive.com::MBI_SSL"
///
/// rsp
/// {
/// "token_type":"bearer",
/// "expires_in":86400,
/// "scope":"service::user.auth.xboxlive.com::MBI_SSL",
/// "access_token":"token here",
/// "refresh_token":"M.R3_BAY.token here",
/// "user_id":"889ed4a3d844f672",
/// "foci":"1"
/// }
const accessTokenUrl = "https://login.live.com/oauth20_token.srf";


