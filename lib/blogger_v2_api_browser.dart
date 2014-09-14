library blogger_v2_api.browser;

import "package:google_oauth2_client/google_oauth2_browser.dart" as oauth;

import 'package:google_blogger_v2_api/src/browser_client.dart';
import "package:google_blogger_v2_api/blogger_v2_api_client.dart";

/** API for access to the data within Blogger. */
@deprecated
class Blogger extends Client with BrowserClient {

  /** OAuth Scope2: Manage your Blogger account */
  static const String BLOGGER_SCOPE = "https://www.googleapis.com/auth/blogger";

  final oauth.OAuth2 auth;

  Blogger([oauth.OAuth2 this.auth]);
}
