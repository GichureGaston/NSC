import 'package:flutter/material.dart';

class Azuka extends StatelessWidget {
  const Azuka({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(11.0),
        child: Center(
          child: Container(
            height: 40,
            decoration: const BoxDecoration(
              color: Colors.grey,
            ),
            child: Row(
              children: [
                Container(
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: const Text(
                    "AZ",
                    style: TextStyle(
                        color: Colors.lightGreenAccent,
                        fontSize: 23,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                const Expanded(
                  flex: 3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "AZUKA SOLUTIONS",
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w700),
                      ),
                      Text("1234567"),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Column(
                  children: [
                    Text("-KSH.15,00.00"),
                    Text("04:40 AM"),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
