import 'package:flutter/material.dart';

class HomeNoData extends StatelessWidget {
  const HomeNoData({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(8),
        child: Column(
          children: [
            Image.asset(
              'assets/sun.png',
              fit: BoxFit.fill,
            ),
            Text(
              "Searching",
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
