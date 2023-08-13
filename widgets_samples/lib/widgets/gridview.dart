import 'package:flutter/material.dart';

class GridViewSample extends StatelessWidget {
  const GridViewSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GridView with Cards'),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Number of columns
          crossAxisSpacing: 10.0, // Spacing between columns
          mainAxisSpacing: 10.0, // Spacing between rows
        ),
        itemCount: 10,
        itemBuilder: (context, index) {
          return Card(
            elevation: 4.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.network(
                  'https://via.placeholder.com/150',
                  height: 100,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Card $index'),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
