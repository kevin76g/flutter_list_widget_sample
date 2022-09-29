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
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<int> entries = [];

  @override
  void initState() {
    super.initState();
    for (int i = 0; i <= 50; i++) {
      entries.add(i);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Custom Scroll View Sample'),
      ),
      body: CustomScrollView(slivers: [
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return Container(
                color: Colors.amber.shade100,
                padding: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 60.0),
                alignment: Alignment.centerLeft,
                child: Text(
                  'Sliver child ${entries[index].toString()}',
                  style: const TextStyle(fontSize: 22.0),
                ),
              );
            },
            childCount: entries.length,
          ),
        ),
      ]),
    );
  }
}
