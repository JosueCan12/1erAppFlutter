import 'package:flutter/material.dart';
import 'package:segundapp/pages/my_home_page.dart';
import 'package:provider/provider.dart';
import 'state/my_app_state.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyAppState(),
      child: MaterialApp(
        title: 'App',
        theme: ThemeData(
          useMaterial3: true,
          // ignore: prefer_const_constructors
          colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 34, 255, 119)),
        ),
        
        // ignore: prefer_const_constructors
        home: MyHomePage(),
        debugShowCheckedModeBanner: false
      ),
    );
  }
}
