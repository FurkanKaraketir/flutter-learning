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
    apiKey: 'AIzaSyBcRMlBqZUfSJv5dT2V5XZcTqX5xonsTWc',
    appId: '1:1047885870282:web:1fb4bd3b94e5b3ad467033',
    messagingSenderId: '1047885870282',
    projectId: 'testproject-23ee9',
    authDomain: 'testproject-23ee9.firebaseapp.com',
    storageBucket: 'testproject-23ee9.appspot.com',
    measurementId: 'G-3YQPZVN0GX',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBNb83E5ZXI7FW_-qD03w4C5Os4GdK3JOM',
    appId: '1:1047885870282:android:f0a4aff4a5da44fc467033',
    messagingSenderId: '1047885870282',
    projectId: 'testproject-23ee9',
    storageBucket: 'testproject-23ee9.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBBMiotrxtuEe3I8wc9w8XCYPnlsSEjVlc',
    appId: '1:1047885870282:ios:cf841e4d12e26157467033',
    messagingSenderId: '1047885870282',
    projectId: 'testproject-23ee9',
    storageBucket: 'testproject-23ee9.appspot.com',
    iosBundleId: 'com.example.testProject',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBBMiotrxtuEe3I8wc9w8XCYPnlsSEjVlc',
    appId: '1:1047885870282:ios:3f636ce3e651413a467033',
    messagingSenderId: '1047885870282',
    projectId: 'testproject-23ee9',
    storageBucket: 'testproject-23ee9.appspot.com',
    iosBundleId: 'com.example.testProject.RunnerTests',
  );
}
