import 'package:flutter/material.dart';
import 'screens/logo_screen.dart';
import 'screens/login_screen.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const RaqibApp());
}

class RaqibApp extends StatelessWidget {
  const RaqibApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Raqib+',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Roboto',
        textTheme: const TextTheme(
          headlineMedium: TextStyle(color: Colors.white),
          bodyLarge: TextStyle(color: Colors.blue),
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const LogoScreen(),
        '/login': (context) => const LoginScreen(),
        '/home': (context) => const HomeScreen(),
      },
    );
  }
}