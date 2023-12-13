import 'package:complaint_pannel/constants.dart';
import 'package:complaint_pannel/screens/admin_screen.dart';
import 'package:complaint_pannel/screens/complaint_screen.dart';
import 'package:complaint_pannel/screens/home_screen.dart';
import 'package:complaint_pannel/screens/registration_screen.dart';
import 'package:flutter/material.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Complaint Panel',
      home: const HomeScreen(),
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme(brightness: Brightness.light, primary: primaryColor, onPrimary: onPrimaryColor, secondary: secondaryColor , onSecondary: onSecondaryColor, error: Colors.red.shade400, onError: Colors.white, background: Colors.white, onBackground: Colors.black, surface: Colors.white, onSurface: Colors.black),
        appBarTheme: const AppBarTheme(
          titleTextStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: onPrimaryColor),
          backgroundColor: primaryColor,
          foregroundColor: onPrimaryColor
        ),
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16)
          )
        ),
        filledButtonTheme: FilledButtonThemeData(
          style: FilledButton.styleFrom(
            backgroundColor: primaryColor,
            foregroundColor: onPrimaryColor,
            textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            minimumSize: const Size.fromHeight(54),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16)
            )
          )
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: primaryColor,
            foregroundColor: onPrimaryColor,
            textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            minimumSize: const Size.fromHeight(54),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16)
            )
          )
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
            textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            minimumSize: const Size.fromHeight(54),
            side: const BorderSide(color: primaryColor),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            )
          )
        )
      ),
      routes: {
        '/home/':(context) => const HomeScreen(),
        '/register/':(context) => const RegisterScreen(),
        '/complaint/' :(context) => const ComplaintScreen(),
        '/admin/' :(context) => const AdminScreen()

      },
    );
  }
}

void main(List<String> args) {
  runApp(const App());
}