import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tarea 1 Mc Flutter',
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool btn1 = false;
  bool btn2 = false;
  bool btn3 = false;
  bool btn4 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mc Flutter'),
      ),
      body: Column(
        children: <Widget>[
          Card(
            shape: RoundedRectangleBorder(
                side: BorderSide(width: 1, color: Colors.black)),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(Icons.account_circle, size: 55.0),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Flutter Mc Flutter',
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.w600),
                          ),
                          Text("Experienced App Developer"),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("123 Main Street"),
                      Text("(415) 555-0198"),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.accessibility,
                            color: btn1 == true ? Colors.indigo : Colors.black),
                        onPressed: () {
                          setState(() {
                            btn1 = !btn1;
                          });
                        },
                      ),
                      IconButton(
                        icon: Icon(Icons.timer,
                            color: btn2 == true ? Colors.indigo : Colors.black),
                        onPressed: () {
                          setState(() {
                            btn2 = !btn2;
                          });
                        },
                      ),
                      IconButton(
                        icon: Icon(Icons.smartphone,
                            color: btn3 == true ? Colors.indigo : Colors.black),
                        onPressed: () {
                          setState(() {
                            btn3 = !btn3;
                          });
                        },
                      ),
                      IconButton(
                        icon: Icon(Icons.phone_android,
                            color: btn4 == true ? Colors.indigo : Colors.black),
                        onPressed: () {
                          setState(() {
                            btn4 = !btn4;
                          });
                        },
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
