import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:animate_do/animate_do.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 87, 5, 5),
      body: Stack(children: [
        Positioned.fill(
          child: FadeIn(
              duration: Duration(seconds: 3),
              child: Image.asset(
                'assets/backgroundImg.jpg',
                fit: BoxFit.cover,
              )),
        ),
        Padding(
            padding: const EdgeInsets.all(8.0),
            child: FadeIn(
              duration: Duration(seconds: 3),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Login",
                          style: GoogleFonts.anton(fontSize: 30),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "please Login to continue",
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                  Card(
                    shadowColor: Colors.black,
                    shape: BeveledRectangleBorder(
                        borderRadius: BorderRadius.circular(4)),
                    color: const Color.fromARGB(60, 255, 255, 255),
                    elevation: 2,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(1.0),
                          child: TextField(
                            decoration: InputDecoration(
                                label: Text("Email"),
                                floatingLabelStyle:
                                    TextStyle(color: Colors.black),
                                labelStyle: TextStyle(color: Colors.black),
                                border: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.black)),
                                contentPadding: EdgeInsets.all(12),
                                filled: false,
                                fillColor:
                                    const Color.fromARGB(0, 255, 255, 255),
                                prefixIcon: HugeIcon(
                                    icon: HugeIcons.strokeRoundedUserAccount,
                                    color: Colors.black),
                                hintText: "Enter the Email ID",
                                hintStyle: TextStyle(color: Colors.black)),
                          ),
                        ),
                        SizedBox(height: 20),
                        Padding(
                          padding: const EdgeInsets.all(1.0),
                          child: TextField(
                            decoration: InputDecoration(
                                label: Text("Password"),
                                floatingLabelStyle:
                                    TextStyle(color: Colors.black),
                                labelStyle: TextStyle(color: Colors.black),
                                semanticCounterText: "Email",
                                border: OutlineInputBorder(),
                                contentPadding: EdgeInsets.all(12),
                                filled: false,
                                fillColor:
                                    const Color.fromARGB(8, 255, 255, 255),
                                prefixIcon: HugeIcon(
                                    icon: HugeIcons
                                        .strokeRoundedPasswordValidation,
                                    color: Colors.black),
                                hintText: "Enter the password",
                                hintStyle: TextStyle(color: Colors.black)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(width: 20),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromARGB(213, 238, 8, 8),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12))),
                        child: Text(
                          "LOG IN",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "Forgot password?",
                        style: TextStyle(color: Colors.black),
                      )),
                ],
              ),
            )),
      ]),
    );
  }
}
