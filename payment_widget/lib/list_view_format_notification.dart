import 'package:flutter/material.dart';

class MpesaMessage extends StatelessWidget {
  const MpesaMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Container(
        color: Colors.grey,
        height: 100,
        child: const Center(
          child: ListTile(
              contentPadding: EdgeInsets.all(16),
              splashColor: Colors.amber,
              leading: CircleAvatar(
                backgroundColor: Colors.white,
                child: Text(
                  "AZ ",
                  style: TextStyle(color: Colors.green),
                ),
              ),
              title: Text(
                "AZUKA SOLUTIONS",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              subtitle: Text("123345"),
              trailing: Column(
                children: [
                  Text(
                    "-KSH.1200.00",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "12:00 PM",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
