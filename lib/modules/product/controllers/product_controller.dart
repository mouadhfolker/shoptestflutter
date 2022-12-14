import 'package:get/get.dart';
import 'package:shoptestflutter/data/service/filtred_service.dart';
import 'package:shoptestflutter/data/service/product_service.dart';

class ProductController extends GetxController {
  final FiltredService _filtredService = FiltredService();
  final ProductService apiService = ProductService();
  var isLoading = true.obs;
  RxList listGroup = List.empty(growable: true).obs;
  RxList listProduct = List.empty(growable: true).obs;
  RxInt selected = (-1).obs;

  @override
  void onInit() {
    getAllFiltred();
    getAllCategory();
    super.onInit();
  }

  Future<void> getAllFiltred() async {
    listGroup.value = await _filtredService.getAllFiltred();
  }

  Future<void> getAllCategory() async {
    try {
      isLoading(true);
      listProduct.value = await apiService.getAllProduct();
    } finally {
      isLoading(false);
    }
  }
}
