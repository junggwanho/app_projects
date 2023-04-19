import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: '짱구는 못말려'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int leftDice = 0;
  List<String> menuList = [
    "플러터",
    "잠옷짱구",
    "잠옷팔벌려짱구",
    "달려짱구",
    "흰둥짱구",
    "소울맹구"
  ];
  String menuName = "플러터";

  void _incrementCounter() {
    setState(() {
      _counter++;
      leftDice = Random().nextInt(menuList.length);
      menuName = menuList[leftDice];

    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            const Text(
              '버튼을 누르면 랜덤 짱구 등장!!',
            ),
            Text(
              menuName,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Image.asset('asset/$menuName.png',width:400, height: 300, fit: BoxFit.fill),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
