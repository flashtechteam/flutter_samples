import 'package:flutter/material.dart';

class ContainerSample extends StatelessWidget {
  const ContainerSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Container Sample'),
      ),
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          decoration: BoxDecoration(
            color: Colors.blue,
            border: Border.all(
              color: Colors.black,
              width: 2.0,
            ),
          ),
          child: const Center(
            child: Text(
              'Container with Border',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
