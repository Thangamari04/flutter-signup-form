import 'package:http/http.dart' as http;
import 'dart:convert';

Future<String> signUp(String name, String businessName, String phone,
    String email, String password) async {
  final url = Uri.parse('http://localhost:3000/signup');

  try {
    final response = await http.post(
      url,
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({
        'name': name,
        'businessName': businessName,
        'phone': phone,
        'email': email,
        'password': password,
      }),
    );

    if (response.statusCode == 200) {
      return 'Signup successful';
    } else {
      return 'Signup failed with status code: ${response.statusCode}';
    }
  } catch (e) {
    return 'Signup failed: $e';
  }
}
