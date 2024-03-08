import 'package:flutter/material.dart';
import 'package:formosa_club/components/equipmentTimeCard.dart';
import 'package:formosa_club/data/home_controller.dart';
import 'package:formosa_club/screens/timeManagementScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Formosa Club',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xff2980b9),
          primary: const Color(0xff2980b9),
        ),
        textTheme: const TextTheme(
          titleLarge: TextStyle(
            fontSize: 32,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
          titleMedium: TextStyle(
              fontSize: 24, color: Colors.black, fontWeight: FontWeight.bold),
        ),
        useMaterial3: true,
      ),
      home: HomeController(
          child: const MyHomePage(title: 'Flutter Demo Home Page')),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return const TimeManagementScreen();
  }
}
