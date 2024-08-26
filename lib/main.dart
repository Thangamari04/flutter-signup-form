import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() {
  runApp(MyApp());
}

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My App'),
          backgroundColor: Colors.blue,
        ),
        body: RegisterForm(),
      ),
    );
  }
}

// ignore: use_key_in_widget_constructors
class RegisterForm extends StatefulWidget {
  @override
  // ignore: library_private_types_in_public_api
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final _nameController = TextEditingController();
  final _businessNameController = TextEditingController();
  final _phoneController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  Future<void> _register() async {
    final url = Uri.parse(
        'http://localhost:3000/register'); // Replace with your IP if needed
    final response = await http.post(
      url,
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode({
        'name': _nameController.text,
        'businessName': _businessNameController.text,
        'phone': _phoneController.text,
        'email': _emailController.text,
        'password': _passwordController.text,
      }),
    );

    if (response.statusCode == 200) {
      final responseData = jsonDecode(response.body);
      // ignore: use_build_context_synchronously
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(responseData['message'])),
      );
    } else {
      // ignore: use_build_context_synchronously
      ScaffoldMessenger.of(context).showSnackBar(
        // ignore: prefer_const_constructors
        SnackBar(content: Text('Failed to register')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Main Text
            // ignore: prefer_const_constructors
            Text(
              'Let\'s Register\nAccount',
              // ignore: prefer_const_constructors
              style: TextStyle(
                fontSize: 25.0, // Large font size for main text
                fontWeight: FontWeight.bold,
              ),
            ),
            // ignore: prefer_const_constructors
            SizedBox(height: 20.0),
            // Description Text
            // ignore: prefer_const_constructors
            Text(
              'Hello user, you have\na grateful journey',
              // ignore: prefer_const_constructors
              style: TextStyle(
                fontSize: 15.0, // Smaller font size for description text
                fontWeight: FontWeight.normal,
              ),
            ),
            // ignore: prefer_const_constructors
            SizedBox(height: 10.0),
            // Name TextField
            TextField(
              controller: _nameController,
              // ignore: prefer_const_constructors
              decoration: InputDecoration(
                labelText: 'Name',
                // ignore: prefer_const_constructors
                border: OutlineInputBorder(),
              ),
            ),
            // ignore: prefer_const_constructors
            SizedBox(height: 10.0),
            // Business Name TextField
            TextField(
              controller: _businessNameController,
              // ignore: prefer_const_constructors
              decoration: InputDecoration(
                labelText: 'Business Name',
                // ignore: prefer_const_constructors
                border: OutlineInputBorder(),
              ),
            ),
            // ignore: prefer_const_constructors
            SizedBox(height: 10.0),
            // Phone TextField
            TextField(
              controller: _phoneController,
              // ignore: prefer_const_constructors
              decoration: InputDecoration(
                labelText: 'Phone',
                // ignore: prefer_const_constructors
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.phone,
            ),
            // ignore: prefer_const_constructors
            SizedBox(height: 10.0),
            // Email TextField
            TextField(
              controller: _emailController,
              // ignore: prefer_const_constructors
              decoration: InputDecoration(
                labelText: 'Email',
                // ignore: prefer_const_constructors
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.emailAddress,
            ),
            // ignore: prefer_const_constructors
            SizedBox(height: 10.0),
            // Password TextField
            TextField(
              controller: _passwordController,
              // ignore: prefer_const_constructors
              decoration: InputDecoration(
                labelText: 'Password',
                // ignore: prefer_const_constructors
                border: OutlineInputBorder(),
              ),
              obscureText: true, // Hides the text for password
            ),
            // ignore: prefer_const_constructors
            SizedBox(height: 20.0), // Add space before the button
            // Sign Up Button
            Center(
              child: ElevatedButton(
                onPressed: _register,
                // ignore: prefer_const_constructors
                child: Text('Sign Up'),
              ),
            ),
            // ignore: prefer_const_constructors
            SizedBox(height: 20.0), // Space between button and text
            // Already have an account? Login
            // ignore: prefer_const_constructors
            Center(
              // ignore: prefer_const_constructors
              child: Text(
                'Already have an account? Login',
                // ignore: prefer_const_constructors
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.blue, // Color matches the button
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
