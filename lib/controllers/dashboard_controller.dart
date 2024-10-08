import 'package:get/get.dart';

class DashboardController extends GetxController{
  //posisi terakhir menu
  var selectedIndex = 0.obs;

  //action pindah menu
  void changeMenu(index){
    selectedIndex.value = index;
  }
}