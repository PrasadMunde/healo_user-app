import 'package:healo_users_app/src/features/screens/welcome/welcome_screen.dart';
import 'package:healo_users_app/src/util/theme/widget_theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async {
  await Supabase.initialize(
    url: "https://gcqftmqhdwqxtynvfusf.supabase.co",
    anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImdjcWZ0bXFoZHdxeHR5bnZmdXNmIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjI5MjkxMDMsImV4cCI6MjAzODUwNTEwM30.PWo048JCfLyqXZk6BHv7FhKYZoU9DHgE11DIr-6blRY',
  );

  runApp( MyApp());
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