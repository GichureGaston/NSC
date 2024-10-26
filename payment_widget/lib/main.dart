import 'package:flutter/material.dart';

import 'notification_sound.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          colorScheme: ColorScheme.light(
        background: Colors.grey.shade100,
        onBackground: Colors.orange.shade700,
        primary: Colors.red.shade800,
        onPrimary: Colors.white,
      )),
      home: NotificationSound(),
    );
  }
}
