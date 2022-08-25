import 'package:get/get.dart';
import 'package:shoptestflutter/routes/app_pages.dart';

class SplashController extends GetxController {
  @override
  void onInit() async {
    await Future.delayed(const Duration(milliseconds: 3000), () {});
    Get.toNamed(Routes.LOGIN);
    super.onInit();
  }
}
