import 'package:flutter/material.dart';

class ColumnSample extends StatelessWidget {
  const ColumnSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Column Sample'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
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
