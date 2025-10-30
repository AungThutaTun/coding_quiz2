import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'StatefulWidget Example',
      home: GreetingPage(),
    );
  }
}

class GreetingPage extends StatefulWidget {
  @override
  _GreetingPageState createState() => _GreetingPageState();
}

class _GreetingPageState extends State<GreetingPage> {
  String message = "안녕하세요";

  void _changeMessage() {
    setState(() {
      message = (message == "안녕하세요") ? "반가워요" : "안녕하세요";
    });
  }

  // ✅ build 메서드는 이 안에 있어야 합니다!
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('글자 변경 앱')),
      body: Center(
        child: Text(
          message,
          style: TextStyle(fontSize: 30),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _changeMessage,
        child: Icon(Icons.refresh),
      ),
    );
  }
}
