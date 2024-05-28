import 'package:flutter/material.dart';
import 'package:weatherapp/Data_From_Api/get_Data.dart';

class LoadingActivity extends StatefulWidget {
  const LoadingActivity({super.key});

  @override
  State<LoadingActivity> createState() => _LoadingActivityState();
}

class _LoadingActivityState extends State<LoadingActivity> {
  String temp = "";
  String humidity = "";
  String airSpeed = "";
  String description = "";
  String mainWeather = "";

  void startApp() async {
    GetData instance = GetData(location: "jaipur");
    await instance.getData();
    temp = instance.temp;
    humidity = instance.humidity;
    airSpeed = instance.airSpeed;
    description = instance.description;
    mainWeather = instance.mainWeather;

    Navigator.pushReplacementNamed(context, '/home/', arguments: {
      "tempValue": temp,
      "humidityValue": humidity,
      "airSpeedValue": airSpeed,
      "mainWeatherValue": mainWeather,
      "descriptionValue": description,
    });
  }

  @override
  void initState() {
    startApp();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Text('loading...'),
      ),
    );
  }
}
