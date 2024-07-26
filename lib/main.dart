
import 'package:healo_users_app/src/features/screens/dashboard/dashboard.dart';
import 'package:healo_users_app/src/features/screens/welcome/welcome_screen.dart';
import 'package:healo_users_app/src/util/theme/widget_theme/theme.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  /*Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);*/
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      debugShowCheckedModeBanner: false,
      home: WelcomeScreen(),
    );
  }
}