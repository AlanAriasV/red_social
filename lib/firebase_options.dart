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
    apiKey: 'AIzaSyBQ2IGwqQPOcPbLsJVXNFeo1yFuPHPL_gk',
    appId: '1:822880088690:web:5eeeaf00058a8a35d988eb',
    messagingSenderId: '822880088690',
    projectId: 'app-isocial',
    authDomain: 'app-isocial.firebaseapp.com',
    storageBucket: 'app-isocial.appspot.com',
    measurementId: 'G-LXT4H7PPT8',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCcNSi5sd8LN9LFHgHrrSeYFI5YMzQSE8s',
    appId: '1:822880088690:android:2fc8dbf1306722b5d988eb',
    messagingSenderId: '822880088690',
    projectId: 'app-isocial',
    storageBucket: 'app-isocial.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCShRG08idDo1HmL6O18VLgqn6vSZAyWHw',
    appId: '1:822880088690:ios:70a214c23e3b2eefd988eb',
    messagingSenderId: '822880088690',
    projectId: 'app-isocial',
    storageBucket: 'app-isocial.appspot.com',
    iosClientId: '822880088690-rt1f6aj18mbnomk7ob563b7q3c8e2d19.apps.googleusercontent.com',
    iosBundleId: 'com.redSocial.redSocial',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCShRG08idDo1HmL6O18VLgqn6vSZAyWHw',
    appId: '1:822880088690:ios:e3c4d331be0f570ad988eb',
    messagingSenderId: '822880088690',
    projectId: 'app-isocial',
    storageBucket: 'app-isocial.appspot.com',
    iosClientId: '822880088690-ab8cobtdknmi9dgquntuauhjm1gapu30.apps.googleusercontent.com',
    iosBundleId: 'com.redSocial.redSocial.RunnerTests',
  );
}
