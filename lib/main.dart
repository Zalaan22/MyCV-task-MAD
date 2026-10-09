import 'package:flutter/material.dart';

void main() {
  runApp( TestApp());
}

class TestApp extends StatelessWidget {
   TestApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My CV',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
   HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text('My CV'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 100,
                    height: 100,
                    child: Image.asset(
                      'assets/profile.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                   Column(
                    children: [
                      Text('ZARAR KHAN'),
                      Text('Software Developer'),
                    ],
                  ),
                ],
              ),
               Divider(),

               Row(
                children: [
                  Text('Education: BS in Software Engineering'),
                ],
              ),
               Divider(),

               Row(
                children: [
                  Text('Skills: Flutter, Dart, Web Development'),
                ],
              ),
               Divider(),
            ],
          ),
        ),
      ),
    );
  }
}