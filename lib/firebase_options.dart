// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars
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
    // ignore: missing_enum_constant_in_switch
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
    }

    throw UnsupportedError(
      'DefaultFirebaseOptions are not supported for this platform.',
    );
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyBwVd7MzExljmlYtxfnc9qeCzicNbidTOA',
    appId: '1:137224945085:web:d175795d05755cfa2ce6d4',
    messagingSenderId: '137224945085',
    projectId: 'udemy-chatt',
    authDomain: 'udemy-chatt.firebaseapp.com',
    storageBucket: 'udemy-chatt.appspot.com',
    measurementId: 'G-WGNVMJYW1R',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyC49FcgZB2FLP6IZSk45GTk4LQfLcYcGE4',
    appId: '1:137224945085:android:a65a2c90a6dd735d2ce6d4',
    messagingSenderId: '137224945085',
    projectId: 'udemy-chatt',
    storageBucket: 'udemy-chatt.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDFNgIfJTT3y4BWhvXlv3ze5DTTgFWlDgY',
    appId: '1:137224945085:ios:31b75cab777ab18d2ce6d4',
    messagingSenderId: '137224945085',
    projectId: 'udemy-chatt',
    storageBucket: 'udemy-chatt.appspot.com',
    iosClientId: '137224945085-t0he3kfpnuvi8detfo3hebg5hpff4d13.apps.googleusercontent.com',
    iosBundleId: 'daichiccchi',
  );
}
