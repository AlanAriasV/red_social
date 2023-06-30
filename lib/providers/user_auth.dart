// import 'package:flutter/material.dart';

// // import 'package:firebase_core/firebase_core.dart';
// import 'package:firebase_auth/firebase_auth.dart';

// import 'package:red_social/providers/providers.dart' show AuthState;
// // import 'package:red_social/providers/firebase.dart';

// class UserAuth with ChangeNotifier {
//   FirebaseAuth firebaseAuth = FirebaseAuth.instance;

//   // bool isLogged = false;
//   // bool isLoading = true;

//   AuthState authState = AuthState.isLoading;

//   User? user;

//   UserAuth() {
//     _authStateChanges();
//   }

//   // instanceFor(FirebaseApp? app) {
//   //   if (app == null) return;
//   // firebaseAuth = FirebaseAuth.instanceFor(app: app);
//   // }

//   _authStateChanges() {
//     user = firebaseAuth.currentUser;
//     if (user != null) {
//       authState = AuthState.isLogged;
//     } else {
//       authState = AuthState.isNotLogged;
//     }
//     // notifyListeners();
//   }

//   // User? get user => _user;

//   // set user(User? user) {
//   //   _user = user;
//   //   // notifyListeners();
//   // }

//   // bool get logged => _logged;

//   // set logged(bool loggedIn) {
//   //   _logged = loggedIn;
//   //   // notifyListeners();
//   // }

//   // bool get isLoading => _loading;

//   // set isLoading(bool loading) {
//   //   _loading = loading;
//   //   // notifyListeners();
//   // }
// }

// // UserAuth auth = UserAuth();
