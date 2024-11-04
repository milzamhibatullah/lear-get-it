import 'package:flutter/material.dart';
import 'package:learn_get_it/service/locator.service.dart';
import 'package:learn_get_it/view/user.view.dart';

void main() {
  ///register the service locator of get_it
  setup();

  ///run the app
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      /// add user view
      home:  UserView(),
    );
  }
}


