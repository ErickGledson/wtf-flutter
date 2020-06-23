import 'package:get/get.dart';

class MeuController extends GetController {

  int counter = 0;
  static MeuController get to => Get.find();

  increment() {
    counter++;
    update();
  }
}