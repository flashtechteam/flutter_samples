import 'package:flutter/material.dart';

class ListViewSample extends StatelessWidget {
  const ListViewSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView Sample'),
      ),
      body: Center(
        child: ListView(
          scrollDirection: Axis.vertical,
          padding: const EdgeInsets.all(8),
          children: [
            Container(
              color: Colors.red,
              width: 50,
              height: 50,
            ),
            Container(
              color: Colors.green,
              width: 50,
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
