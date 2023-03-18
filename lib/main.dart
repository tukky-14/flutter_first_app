import 'package:flutter/material.dart';

import 'form_page.dart';
import 'list_page.dart';
import 'text_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First App'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Image.network('https://http.cat/200'),
              const SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () async {
                  final result = await Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TextPage('戻る')),
                  );
                  print(result);
                },
                style: ButtonStyle(
                  minimumSize: MaterialStateProperty.all(
                      const Size(100, 40)), // 横幅を100に指定
                ),
                child: const Text('次へ'),
              ),
              const SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => FormPage()),
                  );
                },
                style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all(const Size(100, 40)),
                    backgroundColor: MaterialStateProperty.all(Colors.orange)),
                child: const Text('フォーム'),
              ),
              const SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ListPage()),
                  );
                },
                style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all(const Size(100, 40)),
                    backgroundColor: MaterialStateProperty.all(Colors.green)),
                child: const Text('リスト'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
