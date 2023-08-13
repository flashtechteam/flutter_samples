import 'package:flutter/material.dart';
import 'package:widgets_samples/widgets/column.dart';
import 'package:widgets_samples/widgets/gridview.dart';
import 'package:widgets_samples/widgets/listview.dart';
import 'package:widgets_samples/widgets/row.dart';
import 'package:widgets_samples/widgets/stack.dart';
import 'package:widgets_samples/widgets/textfield.dart';

import 'widgets/circle_avatar.dart';
import 'widgets/container.dart';
import 'widgets/listview_builder.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Widget Samples Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const RowSample()));
              },
              child: const Text('Row Sample'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ColumnSample()));
              },
              child: const Text('Column Sample'),
            ),
            TextButton(
              onPressed: () {
                const snackBar = SnackBar(
                  content: Text(
                    'Hi, I\'m Snackbar',
                    style: TextStyle(color: Colors.white),
                  ),
                  backgroundColor: Colors.green,
                  duration: Duration(seconds: 3),
                );
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
              child: const Text(
                'Text Button Sample',
                style: TextStyle(
                    color: Colors.red,
                    decoration: TextDecoration.underline,
                    fontSize: 17,
                    fontWeight: FontWeight.bold),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ListViewSample()));
              },
              child: const Text('ListView Sample'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ListViewBuilderSample()));
              },
              child: const Text('ListView  builder Sample'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const GridViewSample()));
              },
              child: const Text('Grid view Sample'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const StackSample()));
              },
              child: const Text('Stack Sample'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CircleAvatarSample()));
              },
              child: const Text('Circle Avatar Sample'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ContainerSample()));
              },
              child: const Text('Container Sample'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const TextFieldSample()));
              },
              child: const Text('TextField Sample'),
            ),
          ],
        ),
      ),
    );
  }
}
