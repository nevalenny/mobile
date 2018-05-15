import 'package:flutter/material.dart';
import 'ui/login.dart';
import 'ui/account.dart';

import 'package:appcenter/appcenter.dart';
import 'package:appcenter_analytics/appcenter_analytics.dart';
import 'package:appcenter_crashes/appcenter_crashes.dart';

void main() async {
  const android = true;
  var app_secret = android
      ? "637aace0-c0f1-4594-ac55-a5e8dcb47d9a"
      : "321cfac9-123b-123a-123f-123273416a48";
  await AppCenter
      .start(app_secret, [AppCenterAnalytics.id, AppCenterCrashes.id]);
  runApp(new Main());
}

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        color: Colors.blueGrey, title: 'OK', home: new LoginPage());
  }
}
