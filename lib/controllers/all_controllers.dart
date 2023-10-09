import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:october_9_23/models/json_project.dart';
import 'package:october_9_23/models/json_test.dart';
import 'package:http/http.dart' as http;

class JsonController extends GetxController {
  RxBool isLoading = false.obs;

  Rx<List<JsonTest>> listJsonTest = Rx<List<JsonTest>>([]);
  Rx<List<JsonProject>> listJsonProject = Rx<List<JsonProject>>([]);
  
  @override
  // ignore: unnecessary_overrides
  void onInit() {
    getDataTest();
    getDataProject();
    super.onInit();
  }

  getDataTest() async {
    try {
      isLoading.value = true;
      var response = await http.get(Uri.parse('https://mocki.io/v1/0705e53f-9a9f-47f9-91ac-635ac6280ae2'));

      if(response.statusCode == 200) {
        isLoading.value = false;
        final data = jsonDecode(response.body);

        for(Map<String, dynamic> i in data){
          listJsonTest.value.add(JsonTest.fromJson(i));
          // ignore: avoid_print
          print(listJsonTest.value.length);
        }
      }else {
        isLoading.value = false;
        // ignore: avoid_print
        print('error get data in Api');
      }
    } catch (e) {
      Text(e.toString());
    }
  }

  getDataProject() async {
    try {
      isLoading.value = true;
      var response = await http.get(Uri.parse('https://mocki.io/v1/b45e5e74-f60b-45f5-9ceb-191d615ffd1a'));

      if(response.statusCode == 200) {
        isLoading.value = false;
        final data = jsonDecode(response.body);

        for(Map<String, dynamic> i in data){
          listJsonProject.value.add(JsonProject.fromJson(i));
          // ignore: avoid_print
          print(listJsonProject.value.length);
        }
      }else {
        isLoading.value = false;
        // ignore: avoid_print
        print('error get data in Api');
      }
    } catch (e) {
      Text(e.toString());
    }
  }
}
