import 'package:FlutterWhatsApp/screens/screens.dart';
import 'package:flutter/material.dart';

void main() => runApp(FlutterWhatsApp());

class FlutterWhatsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter WhatsApp',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => GroupPage(),
        '/chat': (context) => ChatPage(),
      },
    );
  }
}