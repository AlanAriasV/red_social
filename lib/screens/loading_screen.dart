import 'dart:math';

import 'package:blobs/blobs.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

import 'package:provider/provider.dart';

import 'package:red_social/providers/provider_data.dart';
import 'package:red_social/widgets/widgets.dart' show AnimatedLogo;

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  double shadowOpacity = .25;
  Color color = Colors.transparent;

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
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          ...listAnimatedBlobs(size: size),
          const Center(
            child: AnimatedLogo(),
          ),
        ],
      ),
    );
  }

  List<Widget> listAnimatedBlobs({
    Size size = const Size(0, 0),
  }) {
    final List<Positioned> blobs = [];

    for (double y in [-25, 125, 275, 425, 575]) {
      if ([-25, 275, 575].contains(y)) {
        for (double x in [-175, size.width - 175]) {
          blobs.add(
            Positioned(
              top: y,
              left: x,
              child: AnimatedBlob(
                color: Color.fromRGBO(Random().nextInt(256),
                    Random().nextInt(256), Random().nextInt(256), .5),
              ),
            ),
          );
        }
      } else {
        double x = size.width / 2 - 175;
        blobs.add(
          Positioned(
            top: y,
            left: x,
            child: AnimatedBlob(
              color: Color.fromRGBO(Random().nextInt(256),
                  Random().nextInt(256), Random().nextInt(256), .5),
            ),
          ),
        );
      }
    }

    return blobs;
  }
}

class AnimatedBlob extends StatelessWidget {
  const AnimatedBlob({
    super.key,
    required this.color,
  });

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Blob.animatedRandom(
      duration: const Duration(seconds: 1),
      loop: true,
      edgesCount: 8,
      minGrowth: 4,
      size: 350,
      styles: BlobStyles(
        color: color,
      ),
    );
  }
}
