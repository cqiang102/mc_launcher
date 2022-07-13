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


