import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    print("initstate");
    super.initState();
  }

  @override
  void setState(VoidCallback fn) {
    super.setState(fn);
    print("set State");
  }

  @override
  void dispose() {
    super.dispose();
    print('dispose');
  }

  @override
  Widget build(BuildContext context) {
    Map? dataFromLoadingRoute =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: <Widget>[
          FloatingActionButton(onPressed: () {}),
          Text(dataFromLoadingRoute["tempValue"]),
        ],
      ),
    );
  }
}
