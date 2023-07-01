import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'package:red_social/providers/provider_data.dart';

class AnimatedLogo extends StatefulWidget {
  const AnimatedLogo({
    super.key,
  });

  @override
  State<AnimatedLogo> createState() => _AnimatedLogoState();
}

class _AnimatedLogoState extends State<AnimatedLogo>
    with TickerProviderStateMixin {
  late AnimationController animationController;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(
        seconds: 1,
      ),
    )..repeat(
        reverse: true,
        period: const Duration(
          seconds: 1,
        ),
      );
  }

  @override
  Widget build(BuildContext context) {
    ProviderData providerData = context.watch<ProviderData>();
    ThemeMode themeMode = providerData.themeMode;
    Brightness brightness = providerData.brightness;

    late Color color;

    if (themeMode == ThemeMode.light ||
        (themeMode == ThemeMode.system && brightness == Brightness.light)) {
      color = Colors.black;
    } else if (themeMode == ThemeMode.dark ||
        (themeMode == ThemeMode.system && brightness == Brightness.dark)) {
      color = Colors.white;
    }

    final Animation<double> animation =
        Tween<double>(begin: .25, end: .75).animate(
      animationController,
    );

    return AnimatedBuilder(
      animation: animation,
      builder: (context, child) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Logo(color: color, animation: animation),
            CircularProgressIndicator.adaptive(
              valueColor: AlwaysStoppedAnimation<Color>(
                Color.fromRGBO(255, 0, 255, animation.value),
              ),
            )
          ],
        );
      },
    );
  }
}

class Logo extends StatelessWidget {
  const Logo({
    super.key,
    required this.color,
    required this.animation,
  });

  final Color color;
  final Animation<double> animation;

  @override
  Widget build(BuildContext context) {
    return Text(
      '¡S',
      style: GoogleFonts.dancingScript(
        fontSize: 150,
        fontWeight: FontWeight.bold,
        color: color,
        shadows: [
          Shadow(
            blurRadius: 4,
            color: Color.fromRGBO(255, 125, 255, animation.value),
            offset: const Offset(-3, -3),
          ),
          Shadow(
            blurRadius: 4,
            color: color.withOpacity(animation.value),
            offset: const Offset(3, 3),
          ),
        ],
      ),
    );
  }
}
