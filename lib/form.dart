import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(const MainApp());

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: FormPage(),
    );
  }
}

class FormPage extends StatelessWidget {
  const FormPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form Application'),
      ),
      body: Column(
        children: <Widget>[
          Image.asset(
            'images/3d_avatar_21.png',
            width: 100,
            height: 100,
          ),

          const CustomTextField(label: 'First Name'),
          const CustomTextField(label: 'Last Name'),

          const CustomTextField(
            label: 'Email',
            suffixText: '@mlritm.ac.in',
          ),

          const CustomTextField(
            prefixText: '+91 ',
            label: 'Phone Number',
            keyboardType: TextInputType.phone,
            maxLength: 10,
          ),

          const Divider(
            indent: 8,
            endIndent: 8,
          ),

          const CustomTextField(label: 'Username'),

          const CustomTextField(
            label: 'Password',
            obscureText: true,
          ),

          const CustomTextField(
            label: 'Confirm Password',
            obscureText: true,
          ),

          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SuccessPage(),
                ),
              );
            },
            child: const Text('Register'),
          ),
        ],
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  final String label;
  final TextInputType? keyboardType;
  final bool obscureText;
  final String? prefixText;
  final String? suffixText;
  final int? maxLength;

  const CustomTextField({
    super.key,
    required this.label,
    this.keyboardType,
    this.obscureText = false,
    this.prefixText,
    this.suffixText,
    this.maxLength,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 8,
        horizontal: 16,
      ),
      child: TextFormField(
        keyboardType: keyboardType,
        obscureText: obscureText,
        inputFormatters: maxLength != null
            ? [LengthLimitingTextInputFormatter(maxLength!)]
            : null,
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          labelText: label,
          prefixText: prefixText,
          suffixText: suffixText,
        ),
      ),
    );
  }
}

class SuccessPage extends StatelessWidget {
  const SuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Registration'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.check_circle,
              color: Colors.green,
              size: 80,
            ),
            const SizedBox(height: 20),
            const Text(
              'Registration Successful!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Back'),
            ),
          ],
        ),
      ),
    );
  }
}