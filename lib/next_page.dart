import 'package:flutter/material.dart';

import 'main.dart';

class NextPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Next Page'),
      ),
      body: Container(
        color: Colors.black,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(children: [
              ElevatedButton(
                  child: const Text('戻る'),
                  onPressed: () {
                    Navigator.pop(context);
                  })
            ]),
          ),
        ),
      ),
    );
  }
}
