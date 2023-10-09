import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controllers/all_controllers.dart';

class DetailPageThree extends StatelessWidget {
  const DetailPageThree({super.key});

  @override
  Widget build(BuildContext context) {
    JsonController jsonController = Get.put(JsonController());
    final url = Uri.base.toString();
    final idString = url.split('/').last;
    final id = int.parse(idString);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Page Three"),
      ),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: Center(
          child: Column(
            children: [
              Text('${jsonController.listJsonProject.value[id].firstname}'),
              Text('${jsonController.listJsonProject.value[id].lastname}')
            ],
          )
        )
      )
    );
  }
}