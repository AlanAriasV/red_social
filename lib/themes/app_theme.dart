import 'package:flutter/material.dart';

// import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  // final TextStyle titleLarge = GoogleFonts.dancingScript(
  //   fontSize: 150,
  //   fontWeight: FontWeight.bold,
  //   shadows: [
  //     const Shadow(
  //       blurRadius: 4,
  //       color: Color.fromRGBO(255, 0, 255, .25),
  //       offset: Offset(0, -4),
  //     ),
  //     const Shadow(
  //       blurRadius: 4,
  //       color: Color.fromRGBO(255, 255, 255, .25),
  //       offset: Offset(0, 4),
  //     ),
  //   ],
  // );
  ThemeData get light {
    // const Color primaryColor = Color(0xFF000000);
    // const Color secondaryColor = Color(0xFF000000);
    return ThemeData.light().copyWith(
        // textTheme: TextTheme(
        //   titleLarge: titleLarge.copyWith(color: Colors.black),
        // ),
        );
  }

  ThemeData get dark {
    // const Color primaryColor = Color(0xFF000000);
    // const Color secondaryColor = Color(0xFF000000);
    return ThemeData.dark().copyWith(
        // textTheme: TextTheme(
        //   titleLarge: titleLarge.copyWith(color: Colors.white),
        // ),
        );
  }
}
