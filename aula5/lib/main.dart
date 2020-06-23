import 'package:aula5/MeuController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  Get.put<MeuController>(MeuController());

  runApp(GetMaterialApp(
      home: HomePage(),
    ));
}
class HomePage extends StatelessWidget {
  MeuController controller = MeuController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GetBuilder<MeuController>(
          init: controller,
          builder: (_) {
            return Text('${_.counter}');
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.plus_one),
        onPressed: () {
          MeuController.to.increment();
        },
      ),
    );
  }
}
