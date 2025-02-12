import 'package:flutter/material.dart';

class WeatherInfoBody extends StatelessWidget {
  const WeatherInfoBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Alexandria",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Text(
            "Update at 23:46",
            style: TextStyle(
              fontSize: 28,
            ),
          ),
          const SizedBox(
            height: 32,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset('assets/images/rainy.png'),
              const Text(
                "17",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Column(
                children: [
                  Text("Maxtemp :17",style: TextStyle(
                    fontSize: 14,
                  ),),
                  Text("Mintemp :10",style: TextStyle(fontSize: 14),),
                ],
              )
            ],
          ),
          const Text("Light Rain",style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold),),
        ],
      ),
    );
  }
}
