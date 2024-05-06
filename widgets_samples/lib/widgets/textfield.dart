import 'package:flutter/material.dart';

class TextFieldSample extends StatefulWidget {
  const TextFieldSample({super.key});

  @override
  TextFieldSampleState createState() => TextFieldSampleState();
}

class TextFieldSampleState extends State<TextFieldSample> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final FocusNode emailFN = FocusNode();
  final FocusNode passwordFN = FocusNode();

  void _submitForm() {
    if (emailController.text.isNotEmpty && passwordController.text.isNotEmpty) {
      // Back to Home screen
      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TextField Sample'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: emailController,
              focusNode: emailFN,
              onEditingComplete: () => FocusScope.of(context).requestFocus(passwordFN),
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                labelText: 'Email address',
                hintText: 'Enter an email address',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: passwordController,
              focusNode: passwordFN,
              keyboardType: TextInputType.text,
              onSubmitted: (val) {
                debugPrint(val);
              },
              obscureText: false,
              textInputAction: TextInputAction.go,
              decoration: const InputDecoration(
                labelText: 'Password ',
                hintText: 'Enter password',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: _submitForm,
              child: const Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }
}
