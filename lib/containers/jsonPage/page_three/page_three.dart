import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:october_9_23/controllers/all_controllers.dart';

class PageThree extends StatelessWidget {
  const PageThree({super.key});

  @override
  Widget build(BuildContext context) {
    JsonController jsonController = Get.put(JsonController());

    return Scaffold(
      appBar: AppBar(
        title: const Text("Page Three"),
      ),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: Center(
          child: Obx(
            () => jsonController.isLoading.value 
              ? const Center(
                child: CircularProgressIndicator(),
              ): ListView.builder(
                itemCount: jsonController.listJsonProject.value.length,
                itemBuilder: (context, index) {
                  final posts = jsonController.listJsonProject.value[index];
                  return TextButton(
                    onPressed: () {
                      Get.toNamed('/detail-page-three/${index}');
                    },
                    child: ListTile(
                      leading: CircleAvatar(
                        child: Text('${jsonController.listJsonProject.value[index].firstname}'),
                      ),
                      title: Text('${jsonController.listJsonProject.value[index].createdAt}'),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          if(posts.posts != null)
                            for( var post in posts.posts!)
                              RichText(
                                text: TextSpan(
                                  text: post.title,
                                  style: DefaultTextStyle.of(context).style,
                                ),
                              )
                        ],
                      )
                    ),
                  );
                }
              )
            )
          )
        )
    );
  }
}