import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Flutter FlatButton Example'),
          ),
          body: Center(
            child: ElevatedButton(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Icon(Icons.calendar_month),
                  SizedBox(width: 15),
                  Text("Current Date")
                ],
              ),
              onPressed: () {
                DateTime currentDateTime = DateTime.now();
                print(currentDateTime);
              },
            ),
          )),
    );
  }
}
