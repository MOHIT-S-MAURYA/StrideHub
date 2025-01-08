import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'core/constants/colors.dart';
import 'core/constants/styles.dart';
import 'bottom_nav_bar.dart';
import 'package:stridehub/features/auth/screens/login.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'StrideHub',
      theme: ThemeData(
        // Using the color scheme based on AppColors
        colorScheme: ColorScheme.fromSeed(
          seedColor: AppColors.backgroundColor, 
        ),
        useMaterial3: true,
        scaffoldBackgroundColor: AppColors.backgroundColor, 
        appBarTheme: AppBarTheme(
          backgroundColor: AppColors.backgroundColor, 
        ),
        textTheme: TextTheme(
          // Updated text theme definitions
          bodyLarge: TextStyle(color: AppColors.textColor), // Main body text
          bodyMedium: TextStyle(color: AppColors.textColor), // Secondary body text
          bodySmall: TextStyle(color: AppColors.textColor), // Smaller body text
          titleLarge: TextStyle(color: AppColors.textColor), // Titles and headings
        ),
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: AppColors.inputBackgroundColor, // Input background for dark theme
          hintStyle: TextStyle(color: AppColors.inputHintTextColor), // Input hint color
          border: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.inputBorderColor), // Input field border color
          ),
        ),
      ),
      home: LoginPage(),
    );
  }
}
