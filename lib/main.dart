// ignore_for_file: import_of_legacy_library_into_null_safe
import 'dart:async';
import 'package:bajao/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashS(),
    );
  }
}

class SplashS extends StatefulWidget {
  const SplashS({Key? key}) : super(key: key);

  @override
  State<SplashS> createState() => _SplashSState();
}

class _SplashSState extends State<SplashS> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 5),
        () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => HomePage())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 50,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ImageIcon(
                  AssetImage(
                    'assets/my.png',
                  ),
                  color: Color(0xFFEC9292),
                  size: 500,
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: Container(
                    height: 48,
                    width: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Color(0xFFFFEC9292),
                    ),
                    child: Center(
                      child: Text(
                        'Get Started',
                        style: TextStyle(
                            color: Color(0xFFFFFFFF),
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'f   e   e   l        t   h   e        m   u   s   i   c',
                  style: TextStyle(
                      fontSize: 20,
                      fontFamily: "font/Roboto-Regular.ttf",
                      fontWeight: FontWeight.w600,
                      color: Color(0xFFFFEC9292)),
                ),
              ],
            ),
          ],
        ),
      ),
      backgroundColor: Color(0xFFBF4B4B),
    );
  }
}
