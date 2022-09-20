import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter List Widget Sample'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<int> entries = [];

  @override
  void initState() {
    super.initState();
    for (int i = 0; i < 50; i++) {
      entries.add(i);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
        children: <Widget>[
          const Text(
            'You have pushed the button this many times:',
          ),
          ListView.builder(
              shrinkWrap: true,
              itemCount: entries.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  decoration: BoxDecoration(
                      color: Colors.amber.shade100,
                      border: Border.all(color: Colors.grey, width: 0.5)),
                  height: 50,
                  // color: Colors.amber,
                  child: Center(child: Text('Entry ${entries[index]}')),
                );
              }),
        ],
      ),
    );
  }
}
