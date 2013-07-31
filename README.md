# google_blogger_v2_api

### Description

Auto-generated client library for accessing the blogger v2 API.

#### ![Logo](http://www.google.com/images/icons/product/blogger-16.png) Blogger API - blogger v2

API for access to the data within Blogger.

Official API documentation: https://developers.google.com/blogger/docs/2.0/json/getting_started

Adding dependency to pubspec.yaml

```
  dependencies:
    google_blogger_v2_api: '>=0.3.8'
```

For web applications:

```
  import "package:google_blogger_v2_api/blogger_v2_api_browser.dart" as bloggerclient;
```

For console application:

```
  import "package:google_blogger_v2_api/blogger_v2_api_console.dart" as bloggerclient;
```

Working with out authentication the following constructor can be called:

```
  var blogger = new bloggerclient.Blogger();
```

Working with authentication then create a new `GoogleOAuth2` object and pass it to the constructor:


```
  GoogleOAuth2 auth = new GoogleOAuth2(CLIENT_ID, SCOPES);
  var blogger = new bloggerclient.Blogger(auth);
```

### Licenses

```
Copyright (c) 2013 Gerwin Sturm & Adam Singer

Licensed under the Apache License, Version 2.0 (the "License"); you may 
not use this file except in compliance with the License. You may obtain a 
copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
License for the specific language governing permissions and limitations 
under the License

------------------------
Based on http://code.google.com/p/google-api-dart-client

Copyright 2012 Google Inc.
Licensed under the Apache License, Version 2.0 (the "License"); you may 
not use this file except in compliance with the License. You may obtain a
copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
License for the specific language governing permissions and limitations 
under the License

```
