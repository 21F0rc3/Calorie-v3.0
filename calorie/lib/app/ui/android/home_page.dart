import 'package:calorie/app/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('HomePage')),
      body: Container(
        child: GetX<HomeController>(
            initState: (state) { Get.find<HomeController>().getAll() ;},
            builder: (_) {
              return _.mealsList.length < 1 ? Center(child: CircularProgressIndicator(),) : ListView.builder(itemBuilder: (context, index) {
                                                                                              return ListTile(
                                                                                                title: Text(_.mealsList[index].meal),
                                                                                                subtitle: Text(_.mealsList[index].flag_delete.toString()),
                                                                                              );
                                                                                            },
                itemCount: _.mealsList.length,
              );
            }),
      ),
    );
  }
}