import 'package:flutter/material.dart';
 
void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.light().copyWith(
        primaryColor: Colors.black12,
      ),
      darkTheme: ThemeData.dark().copyWith(
        primaryColor: Colors.black12,
      ),
      home: MyHomePage(title: '足し算アプリ'),
    );
  }
}
 
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
 
  @override
  State createState() => _MyHomePageState();
}
 
class _MyHomePageState extends State {
  int _counter = 0;
 
  void incrementCounter(int number) {
    setState(() {
      _counter = _counter + number;
    });
  }
 
  void _incrementCounterClear() {
    setState(() {
      _counter = 0;
    });
  }
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("aaa"),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 32, bottom: 32),
            child: Text('好きなボタンを押してください。\n押したボタンの数字が追加されます'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () => incrementCounter(1),
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue,
                  elevation: 16,
                ),
                child: Text('+1'),
              ),
              ElevatedButton(
                onPressed: () => incrementCounter(10),
                style: ElevatedButton.styleFrom(
                  primary: Colors.orange,
                  elevation: 20,
                ),
                child: Text('+10'),
              ),
              ElevatedButton(
                onPressed: () => incrementCounter(100),
                style: ElevatedButton.styleFrom(
                  primary: Colors.red,
                  elevation: 24,
                ),
                child: Text('+100'),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.only(top: 82),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                '$_counter',
                style: Theme.of(context).textTheme.headline1,
              ),
            ],
          ),
        ],
      ),
 
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounterClear,
        tooltip: 'Increment',
        child: Text('Clear'),
      ), 
    );
  }
}
