import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:short_assignment_app/screens/listing_page.dart';
import 'dart:convert';

import 'models/models.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Threads App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ListingPage(),
    );
  }
}





