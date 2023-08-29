import 'package:flutter/material.dart';

class NoWeatherScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
           Image.asset('assets/images/no-data-found-8867280-7265556.webp'),
            Text(
              "Start searching now 🔍",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
