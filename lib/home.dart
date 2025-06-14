import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              "assets/Kerfin7_NEA_2378.jpg",
              fit: BoxFit.fill,
            ),
          ),
          Positioned(
            bottom: 30,
            left: 0,
            right: 0,
            child: Column(
              children: [
                Center(
                  child: Text(
                    'Jump back in',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                ElevatedButton.icon(
                    style: ButtonStyle(
                        maximumSize: MaterialStateProperty.all(Size(200, 500))),
                    onPressed: () {},
                    label: Image.network(
                        'https://img.icons8.com/color/48/google-logo.png'))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
