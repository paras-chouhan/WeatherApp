import 'dart:convert';

import 'package:http/http.dart';

class GetData {
  String location = "";
  GetData({required this.location}) {
    location = location;
  }

  String temp = "";
  String humidity = "";
  String airSpeed = "";
  String description = "";
  String mainWeather = "";

  Future<void> getData() async {
    try {
      Response result = await get(Uri.parse(
          'https://api.openweathermap.org/data/2.5/weather?q=$location&appid=8ec8348a22576067c951467596b1bc38'));
      Map data = jsonDecode(result.body);

      //getting temprature, humidity

      Map tempData = data["main"];
      double getTemp = tempData["temp"];
      String humidityOfWeather = tempData["humidity"].toString();

      //getting description
      List weatherList = data["weather"];
      Map weatherIndex = weatherList[0];
      String weatherMoodMain = weatherIndex["main"];
      String weatherDescription = weatherIndex["description"];

      //getting air_speed
      Map weatherWindData = data["wind"];
      double speed = weatherWindData["speed"];

      //assigning the value of data member
      temp = getTemp.toString();
      humidity = humidityOfWeather;
      mainWeather = weatherMoodMain;
      description = weatherDescription;
      airSpeed = speed.toString();
    } catch (e) {
      temp = "Error!!";
      humidity = "Error!!";
      mainWeather = "Error!!";
      description = "Error!!";
      airSpeed = "Error!!";
      print(e);
    }
  }
}
