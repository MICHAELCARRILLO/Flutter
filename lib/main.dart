import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Huxter X Hanter",
      home: MainHome(),
    );
  }
}

class MainHome extends StatefulWidget {
  const MainHome({super.key});

  @override
  State<MainHome> createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(body: login(screenWidth));
  }
}

Widget login(final screenWidth) {
  return Container(
    decoration: const BoxDecoration(
        image: DecorationImage(
            image: NetworkImage(
                "https://i.pinimg.com/736x/33/64/1e/33641e566a3cb829a8a53669a734d7aa.jpg"),
            fit: BoxFit.cover)),
    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          loginText(),
          userInput("User", 15.0, 12.0, false),
          userInput("Password", 15.0, 1.0, true),
          const SizedBox(height: 15),
          button("Log In", 15.0, screenWidth)
        ],
      ),
    ),
  );
}

Widget userInput(String hint, double horizontalPadding, double verticalPadding,
    bool passwordHint) {
  return Container(
    padding: EdgeInsets.symmetric(
        horizontal: horizontalPadding, vertical: verticalPadding),
    child: TextField(
      obscureText: passwordHint,
      decoration: InputDecoration(
          hintText: hint, fillColor: Colors.white, filled: true),
    ),
  );
}

Widget loginText() {
  return Container(
    padding: const EdgeInsets.symmetric(vertical: 12),
    child: const Text("Sign In",
        style: TextStyle(
            color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold)),
  );
}

Widget button(String text, double horizontalPadding, final screenWidth) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: horizontalPadding),
    child: SizedBox(
      width: screenWidth,
      child: ElevatedButton(
          onPressed: () {},
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(text,
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          )),
    ),
  );
}
