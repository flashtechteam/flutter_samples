import 'package:flutter/material.dart';

class RowSample extends StatelessWidget {
  const RowSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Row Sample'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
