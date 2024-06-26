// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyDu5vU4Pz_vJJiczOGWzkJcrflWEtgc6R8',
    appId: '1:70757817277:web:992fd36230eb04c78210d4',
    messagingSenderId: '70757817277',
    projectId: 'chat-app-v2-20425',
    authDomain: 'chat-app-v2-20425.firebaseapp.com',
    storageBucket: 'chat-app-v2-20425.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAOxzzZ8z79_U0RJVrqRbJ_XZjFvOXNRB8',
    appId: '1:70757817277:android:960512c90a343a5b8210d4',
    messagingSenderId: '70757817277',
    projectId: 'chat-app-v2-20425',
    storageBucket: 'chat-app-v2-20425.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCbun_XWXKK-Lq_1G2eFaeAN2CKdU5wzgU',
    appId: '1:70757817277:ios:7e44a6f03da8a05f8210d4',
    messagingSenderId: '70757817277',
    projectId: 'chat-app-v2-20425',
    storageBucket: 'chat-app-v2-20425.appspot.com',
    iosBundleId: 'com.example.chatapp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCbun_XWXKK-Lq_1G2eFaeAN2CKdU5wzgU',
    appId: '1:70757817277:ios:7e44a6f03da8a05f8210d4',
    messagingSenderId: '70757817277',
    projectId: 'chat-app-v2-20425',
    storageBucket: 'chat-app-v2-20425.appspot.com',
    iosBundleId: 'com.example.chatapp',
  );
}
