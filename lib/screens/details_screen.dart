import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  final String firstname;
  final String lastname;
  final String email;

  const DetailsScreen(
      {required this.firstname, required this.lastname, required this.email});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Registration Details"),
      ),

      body:  Padding(padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("First name: $firstname",
          style: const TextStyle(
            fontSize: 25
          ),
          ),
          Text("Last name: $lastname",
          style: const TextStyle(
            fontSize: 25
          ),
          ),
          Text("email: $email",
          style: const TextStyle(
            fontSize: 25
          ),
          )
        ],
      ),
      ),
    );
  }
}