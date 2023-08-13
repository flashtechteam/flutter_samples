import 'package:flutter/material.dart';

class ListViewBuilderSample extends StatelessWidget {
  const ListViewBuilderSample({super.key});

  @override
  Widget build(BuildContext context) {
    final itemsList = ['Orange', 'Apple', 'Mango', 'Strawberry'];

    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView builder Sample'),
      ),
      body: Center(
        child: ListView.builder(
          scrollDirection: Axis.vertical,
          padding: const EdgeInsets.all(8),
          itemCount: itemsList.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(
                itemsList[index],
                style: const TextStyle(
                  color: Colors.blue,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
