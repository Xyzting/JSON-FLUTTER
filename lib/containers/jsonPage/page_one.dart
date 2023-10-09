import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:october_9_23/controllers/all_controllers.dart';

class PageOne extends StatelessWidget {
  const PageOne({super.key});

  @override
  Widget build(BuildContext context) {
    JsonController jsonController = Get.put(JsonController());

    return Scaffold(
      appBar: AppBar(
        title: const Text("Page One"),
      ),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: Center(
          child: Obx(
            () => jsonController.isLoading.value 
              ? const Center(
                child: CircularProgressIndicator(),
              ): ListView.builder(
                itemCount: jsonController.listJsonTest.value.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                      child: Text('${jsonController.listJsonTest.value[index].userId}'),
                    ),
                    title: Text('${jsonController.listJsonTest.value[index].name}'),
                    subtitle: Text('${jsonController.listJsonTest.value[index].email}'),
                  );
                }
              )
            )
          )
        )
      );
  }
}