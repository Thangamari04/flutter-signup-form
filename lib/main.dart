import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My App'),
          backgroundColor: Colors.blue,
        ),
        body: const Padding(
          padding: EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Main Text
                Text(
                  'Let\'s Register\nAccount',
                  style: TextStyle(
                    fontSize: 25.0, // Large font size for main text
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20.0),
                // Description Text
                Text(
                  'Hello user, you have\na grateful journey',
                  style: TextStyle(
                    fontSize: 15.0, // Smaller font size for description text
                    fontWeight: FontWeight.normal,
                  ),
                ),
                SizedBox(height: 10.0),
                // Name TextField
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Name',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 10.0),
                // Business Name TextField
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Business Name',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 10.0),
                // Phone TextField
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Phone',
                    border: OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.phone,
                ),
                SizedBox(height: 10.0),
                // Email TextField
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(),
                  ),
                  keyboardType: TextInputType.emailAddress,
                ),
                SizedBox(height: 10.0),
                // Password TextField
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(),
                  ),
                  obscureText: true, // Hides the text for password
                ),

                SizedBox(height: 20.0), // Add space before the button
                // Sign Up Button
                Center(
                  child: ElevatedButton(
                    onPressed: null, // No action, purely UI design
                    // ignore: sort_child_properties_last
                    child: Text('Sign Up'),
                  ),
                ),
                SizedBox(height: 20.0), // Space between button and text
                // Already have an account? Login
                Center(
                  child: Text(
                    'Already have an account? Login',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.blue, // Color matches the button
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
