import 'package:get/get.dart';
import 'package:shoptestflutter/data/service/category_service.dart';
import 'package:shoptestflutter/routes/app_pages.dart';

class OrderController extends GetxController {
  final CategoryService apiService = CategoryService();
  var isLoading = true.obs;

  RxList listGategory = List.empty(growable: true).obs;

  @override
  void onInit() {
    getAllCategory();
    super.onInit();
  }

  Future<void> getAllCategory() async {
    try {
      isLoading(true);
      listGategory.value = await apiService.getAllCategory();
    } finally {
      isLoading(false);
    }
  }

  void navigateToOrder() {
    Get.toNamed(Routes.ORDER);
  }
}
