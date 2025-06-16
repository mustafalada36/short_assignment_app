import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:short_assignment_app/screens/listing_page.dart';
import 'dart:convert';

import 'models/models.dart';


void main() {
  runApp(MaterialApp(
    title: 'Threads App',
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: const ListingPage(),
  ),);
}






