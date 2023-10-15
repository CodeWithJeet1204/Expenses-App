import 'package:expenses/widgets/expenses.dart';
import 'package:flutter/material.dart';

var kLightColorScheme = ColorScheme.fromSeed(
  seedColor: const Color.fromARGB(255, 96, 59, 181),
);
var kDarkColorScheme = ColorScheme.fromSeed(
  brightness: Brightness.dark,
  seedColor: const Color.fromARGB(255, 5, 99, 125),
);

void main() {
  runApp(
    MaterialApp(
      home: const Expenses(),
      theme: ThemeData(
        useMaterial3: true,
        //  LIGHT Theme
        colorScheme: kLightColorScheme,
        appBarTheme: const AppBarTheme().copyWith(
          backgroundColor: kLightColorScheme.onPrimaryContainer,
          foregroundColor: kLightColorScheme.primaryContainer,
        ),
        cardTheme: const CardTheme().copyWith(
          color: kLightColorScheme.secondaryContainer,
          margin: const EdgeInsets.all(8),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: kLightColorScheme.primaryContainer,
          ),
        ),
        textTheme: ThemeData().textTheme.copyWith(
              titleLarge: TextStyle(
                fontWeight: FontWeight.normal,
                color: kLightColorScheme.onSecondaryContainer,
                fontSize: 18,
              ),
            ),
      ),
      //  DARK Theme
      darkTheme: ThemeData.dark().copyWith(
        useMaterial3: true,
        colorScheme: kDarkColorScheme,
        cardTheme: const CardTheme().copyWith(
          color: kDarkColorScheme.secondaryContainer,
          margin: const EdgeInsets.all(8),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: kDarkColorScheme.primaryContainer,
            foregroundColor: kDarkColorScheme.onPrimaryContainer,
          ),
        ),
        // themeMode: ThemeMode.system, <DEFAULT>
      ),
      debugShowCheckedModeBanner: false,
    ),
  );
}
