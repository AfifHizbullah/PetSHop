import 'package:get/get.dart';

class FirstScreenController extends GetxController {
  void navigateToNextPage() {
    Get.toNamed('/secondscreen');
    Get.toNamed('/http');
  }
}
