import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Testing Json"),
      ),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: Column(
          children: [  
            TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Colors.blue, 
                disabledForegroundColor: Colors.red.withOpacity(0.38),
                backgroundColor: Colors.blueAccent
              ),
              onPressed: () {
                Get.toNamed('/page-one');
              },
              child: const Text('Page One', style: TextStyle(color: Colors.white),),
            ),
            const SizedBox(
              height: 10,
            ),
            TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Colors.blue, 
                disabledForegroundColor: Colors.red.withOpacity(0.38),
                backgroundColor: Colors.blueAccent
              ),
              onPressed: () {
                Get.toNamed('/page-two');
              },
              child: const Text('Page Two', style: TextStyle(color: Colors.white),),
            ),
            const SizedBox(
              height: 10,
            ),
            TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Colors.blue, 
                disabledForegroundColor: Colors.red.withOpacity(0.38),
                backgroundColor: Colors.blueAccent
              ),
              onPressed: () {
                Get.toNamed('/page-three');
              },
              child: const Text('Page Three', style: TextStyle(color: Colors.white),),
            ),
          ]
        )
      )
    );
  }
}