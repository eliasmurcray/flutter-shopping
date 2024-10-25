import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

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
        return windows;
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
    apiKey: 'AIzaSyDGgV5-i8M5y9VIMVm7oYbFJc9k2_-yI3A',
    appId: '1:264111683593:web:5034bb9882cfc4d9d1e0d8',
    messagingSenderId: '264111683593',
    projectId: 'eliasmurcray-flutter-shopping',
    authDomain: 'eliasmurcray-flutter-shopping.firebaseapp.com',
    storageBucket: 'eliasmurcray-flutter-shopping.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDp4opauA5vvwXgKfc1uhKWgfXsFUaS3sQ',
    appId: '1:264111683593:android:91c96c731558074ad1e0d8',
    messagingSenderId: '264111683593',
    projectId: 'eliasmurcray-flutter-shopping',
    storageBucket: 'eliasmurcray-flutter-shopping.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA-5OEarI3MVN404a0k0iz6xKtG0tBXRzw',
    appId: '1:264111683593:ios:425426486899adc8d1e0d8',
    messagingSenderId: '264111683593',
    projectId: 'eliasmurcray-flutter-shopping',
    storageBucket: 'eliasmurcray-flutter-shopping.appspot.com',
    iosBundleId: 'com.example.shopping',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyA-5OEarI3MVN404a0k0iz6xKtG0tBXRzw',
    appId: '1:264111683593:ios:425426486899adc8d1e0d8',
    messagingSenderId: '264111683593',
    projectId: 'eliasmurcray-flutter-shopping',
    storageBucket: 'eliasmurcray-flutter-shopping.appspot.com',
    iosBundleId: 'com.example.shopping',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDGgV5-i8M5y9VIMVm7oYbFJc9k2_-yI3A',
    appId: '1:264111683593:web:bfcf9a1956197fb5d1e0d8',
    messagingSenderId: '264111683593',
    projectId: 'eliasmurcray-flutter-shopping',
    authDomain: 'eliasmurcray-flutter-shopping.firebaseapp.com',
    storageBucket: 'eliasmurcray-flutter-shopping.appspot.com',
  );
}
