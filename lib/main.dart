import 'package:flutter/material.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';

import 'package:red_social/screens/screens.dart';

import 'package:red_social/providers/providers.dart' show ProviderData;
import 'package:red_social/themes/app_theme.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

// Ideal time to initialize
  await FirebaseAuth.instance.useAuthEmulator('localhost', 9099);
//...
// }
// void main() {

  runApp(
    MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => ProviderData())],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeMode themeMode = context.watch<ProviderData>().themeMode;
    AppTheme appTheme = AppTheme();

    return MaterialApp(
      theme: appTheme.light,
      darkTheme: appTheme.dark,
      themeMode: themeMode,
      routes: <String, Widget Function(BuildContext)>{
        '/loading': (_) => const LoadingScreen(),
        '/home': (_) => const HomeScreen(),
        '/login': (_) => const LoginScreen(),
      },
      initialRoute: '/login',
    );
  }
}
