import 'package:flutter/material.dart';

class FormPage extends StatelessWidget {
  FormPage({super.key});
  final myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Form Page'),
        ),
        body: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              TextField(
                decoration: const InputDecoration(
                  hintText: '名前',
                ),
                onChanged: (text) {
                  print('First text field: $text');
                },
              ),
              const TextField(
                decoration: InputDecoration(
                  hintText: '趣味',
                ),
              ),
              const SizedBox(height: 20.0),
              ElevatedButton(
                child: const Text('新規登録'),
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: const Text('新規登録します。'),
                        );
                      });
                },
              ),
            ],
          ),
        ));
  }
}
