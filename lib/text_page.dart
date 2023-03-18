import 'package:flutter/material.dart';

class TextPage extends StatelessWidget {
  TextPage(this.name, {super.key});
  String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Text Page'),
      ),
      body: Container(
        color: Colors.black,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(children: [
              ElevatedButton(
                  child: Text(name),
                  onPressed: () {
                    Navigator.pop(context, 'おかえりなさい。');
                  }),
              const Text(
                'Hello World!',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              const Text(
                'Goodbye World!',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontStyle: FontStyle.italic,
                  decoration: TextDecoration.underline,
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
