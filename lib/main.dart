import 'package:flutter/material.dart';
import 'package:weatherapp/Activity/loading.dart';
import 'package:weatherapp/Activity/location.dart';
import 'Activity/home.dart';

void main() {
  runApp(MaterialApp(
    home: const LoadingActivity(),
    theme: ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      useMaterial3: true,
    ),
    routes: {
      '/loading/': (context) => const LoadingActivity(),
      '/home/': (context) => const Home(),
      '/location/': (context) => const LocationActivity(),
    },
  ));
}
