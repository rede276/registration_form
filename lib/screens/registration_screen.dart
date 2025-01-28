import 'package:flutter/material.dart';

class RegistrationScreen extends StatefulWidget {
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final TextEditingController firstnameController = TextEditingController();
  final TextEditingController lastnameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  bool isRegistered = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Registration Form"),
        ),
        body: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  controller: firstnameController,
                  decoration: InputDecoration(labelText: 'First Name'),
                ),
                TextField(
                  controller: lastnameController,
                  decoration: InputDecoration(labelText: 'Last Name'),
                ),
                TextField(
                  controller: emailController,
                  decoration: InputDecoration(labelText: 'E-mail address'),
                ),
                SizedBox(
                  height: 30,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isRegistered = !isRegistered;
                    });
                    
                  },
                  child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(color: isRegistered? Colors.green:
                  Colors.blue,
                  borderRadius: BorderRadius.
                  circular(10)
                  ), 
                  child: Text(
                  isRegistered ?
                  'Registration successful' :
                  'Register me',
                   style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                   ),
                  ),
                  ),
                )
              ],
            )));
  }
}
