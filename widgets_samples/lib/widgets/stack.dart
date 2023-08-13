import 'package:flutter/material.dart';

class StackSample extends StatelessWidget {
  const StackSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stack Widget sample'),
      ),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              color: Colors.blue,
              width: 200,
              height: 200,
            ),
            Positioned(
              top: 20,
              left: 20,
              child: Container(
                color: Colors.red,
                width: 100,
                height: 100,
              ),
            ),
            Positioned(
              bottom: 20,
              right: 20,
              child: Container(
                color: Colors.green,
                width: 100,
                height: 100,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
