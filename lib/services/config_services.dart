class ConfigServices {
  /*
  * Urls from Api 
  */

  static const String _urlProd = "https://sngcr.com:8004";
  static const String _urlDev = "https://ava.sngcr.com:8002";

  /*
  * Configuring Authorization 
  * ----------------------------------------------------------------------
  * authorizationMode 
  * Bearer or null if this is not mode.
  *
  * useAuthorization 
  * if your api dont required authorization then useAuthorization = false
  * if your api required authorization then useAuthorization = true
  *
  * paramHeaderName
  * this is the name that use the header to recive the authToken its can be 
  * Authorization, Auth_Code, auth, etc.
  * example:
  * Authorization = Bearer 4a67cac76sa4cac5764534c9aasad45f67787655; 
  * Auth_Code = 4a67cac76sa4cac5764534c9aasad45f67787655;
  */

  static const String authorizationMode = "Bearer";
  static const bool useAuthorization = false;
  static const String paramHeaderName = "Authorization";

  /*
  * appMode 
  * if the app is on Production mode appMode = "prod"
  * if the app is on Develope mode appMode = "dev"
  */

  static String appMode = "prod";
  static String get urlBase => appMode == "prod" ? _urlProd : _urlDev;
  static String apiToken = "";
}
