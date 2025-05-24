import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

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
            child: Image.asset(
          'assets/backgroundImg.jpg',
          fit: BoxFit.cover,
        )),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Hunsur Food Dlivery"),
              Card(
                shadowColor: Colors.black,
                shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.circular(4)),
                color: const Color.fromARGB(0, 255, 255, 255),
                elevation: 2,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(1.0),
                      child: TextField(
                        decoration: InputDecoration(
                            enabledBorder: InputBorder.none,
                            contentPadding: EdgeInsets.all(12),
                            filled: false,
                            fillColor: const Color.fromARGB(0, 255, 255, 255),
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
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.all(12),
                            filled: false,
                            fillColor: const Color.fromARGB(8, 255, 255, 255),
                            prefixIcon: HugeIcon(
                                icon: HugeIcons.strokeRoundedPasswordValidation,
                                color: Colors.black),
                            hintText: "Enter the password",
                            hintStyle: TextStyle(color: Colors.black)),
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
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
                        SizedBox(width: 120),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  const Color.fromARGB(188, 238, 8, 8),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12))),
                          child: Text(
                            "SinUp",
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
              ),
              Text(
                "=======================================",
                style: TextStyle(color: Colors.white),
              ),
              Text("Or SignIn With"),
              Card(
                color: Colors.blueAccent,
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: HugeIcon(
                            size: 35,
                            icon: HugeIcons.strokeRoundedGoogle,
                            color: Colors.black)),
                    Text(
                      "   log in with Google",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ]),
    );
  }
}
