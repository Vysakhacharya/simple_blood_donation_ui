import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: content(),
    );
  }
  Widget content() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.redAccent,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(40),
                bottomRight: Radius.circular(40),
              ),
            ),
            height: 270,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: Center(
                child: Text(
                  'DONATE  \n BLOOD',
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 100,
        ),
        LoginButton('Sign in'),
        SizedBox(
          height: 30,
        ),
        LoginButton('Create Account'),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Align(
            alignment: Alignment.topLeft,
            child: Row(
              children: [
                Text(
                  'Learn More',
                  style: TextStyle(fontSize: 15, color: Colors.redAccent),
                ),
                Spacer(),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed('/survey');
                  },
                  child: Text(
                    'Skip now ->',
                    style: TextStyle(fontSize: 15, color: Colors.redAccent),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

Widget LoginButton(String title) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20.0),
    child: Container(
      height: 60,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.redAccent,
        borderRadius: BorderRadius.circular(20),
      ),
      child: TextButton(
        onPressed: () {},
        child: Text(
          title,
          style: TextStyle(fontSize: 18, color: Colors.white),
        ),
      ),
    ),
  );
}
