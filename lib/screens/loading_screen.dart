import 'package:flutter/material.dart';

// import 'package:firebase_auth/firebase_auth.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();

    //* comment the below lines if you want to see the loading screen
    // Future.delayed(const Duration(seconds: 0), () {
    //   if (FirebaseAuth.instance.currentUser != null) {
    //     Navigator.pushReplacementNamed(context, '/home');
    //   }
    //   if (FirebaseAuth.instance.currentUser == null) {
    //     Navigator.pushReplacementNamed(context, '/login');
    //   }
    // });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
