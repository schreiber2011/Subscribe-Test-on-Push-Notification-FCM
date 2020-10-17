import 'dart:io';

import 'package:firebase_messaging/firebase_messaging.dart';

class PushNotificationService {
  final FirebaseMessaging _fcm = FirebaseMessaging();

  Future initialize() async {
    if(Platform.isIOS)  {
      _fcm.requestNotificationPermissions(IosNotificationSettings());
    }

    _fcm.configure(
      // Called when app foreground
      onMessage: (Map<String, dynamic> message) async {
        print('onMessage: $message');
      },

      // Call when app is closed
      onLaunch: (Map<String, dynamic> message) async {
        print('onMessage: $message');
      },

      //Call when app in background
      onResume: (Map<String, dynamic> message) async {
        print('onMessage: $message');
      }
    );
  }
}