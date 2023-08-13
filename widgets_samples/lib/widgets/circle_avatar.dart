import 'package:flutter/material.dart';

class CircleAvatarSample extends StatelessWidget {
  const CircleAvatarSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Circle Avatar Sample'),
      ),
      body: const Center(
        child: CircleAvatar(
          radius: 50,
          backgroundImage: NetworkImage(
            'https://via.placeholder.com/150',
          ),
        ),
      ),
    );
  }
}
