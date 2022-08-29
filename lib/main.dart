import 'package:flutter/material.dart';
import 'package:myshop/View/BottomNavbar/bottomnavbar.dart';
import 'package:myshop/View/HomeScreen/home.dart';
import 'package:myshop/View/RegistrationScreen/login.dart';
import 'package:myshop/View/RegistrationScreen/login_register_choice.dart';
import 'package:myshop/View/RegistrationScreen/register.dart';
import 'package:myshop/View/SplashScreen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MyShop',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/splash',
      routes: {
        '/splash': (context) => const SplashScreen(),
        '/home': (context) => const HomeScreen(),
        '/bottomnavbar': (context) => const BottomNavBar(),
        '/loginregisterchoice': (context) => const LoginRegisterChoice(),
        '/login': (context) => const LoginScreen(),
        '/register': (context) => const RegisterScreen(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(),
      ),
    );
  }
}
