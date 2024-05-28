import 'package:flutter/material.dart';
import 'package:weatherapp/Data_From_Api/get_Data.dart';

class LoadingActivity extends StatefulWidget {
  const LoadingActivity({super.key});

  @override
  State<LoadingActivity> createState() => _LoadingActivityState();
}

class _LoadingActivityState extends State<LoadingActivity> {
  void startApp() async {
    GetData instance = GetData(location: "jaipurr");
    await instance.getData();

    print(instance.airSpeed);
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
