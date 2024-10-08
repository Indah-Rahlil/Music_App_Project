import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/dashboard_controller.dart';
import 'package:music_app/pages/menus/beranda_page.dart';
import 'package:music_app/pages/menus/koleksi_page.dart';
import 'package:music_app/pages/menus/search_page.dart';

class DashboardBottom extends StatelessWidget {
  const DashboardBottom({super.key});

  @override
  Widget build(BuildContext context) {
    final DashboardController dashboardController = Get.put(DashboardController());

    final List<Widget> menus =[BerandaPage(), SearchPage(), KoleksiPage()];
    return Obx(() {
      return Scaffold(
        body: menus[dashboardController.selectedIndex.value],
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: dashboardController.selectedIndex.value,
            onTap: dashboardController.changeMenu,
            backgroundColor: Color(0xFF304D6F),
            selectedLabelStyle: TextStyle(fontFamily: 'Josefin Sans', fontSize: 15),
            unselectedLabelStyle: TextStyle(fontFamily: 'Josefin Sans', fontSize: 12),
            selectedIconTheme: IconThemeData(color: Color(0xFFFFFFFF), size: 30),
            unselectedIconTheme: IconThemeData(color: Color(0xFF1D344A), size: 20),
            selectedItemColor: Color(0xFFFFFFFF),
            unselectedItemColor: Color(0xFF1D344A),
            items: [
              BottomNavigationBarItem(icon: ImageIcon(AssetImage('asset/images/icon-park-solid_xiaodu-home.png'),), label: 'Beranda',),
              BottomNavigationBarItem(icon: ImageIcon(AssetImage('asset/images/lets-icons_search-alt-fill.png'),), label: 'Cari'),
              BottomNavigationBarItem(icon: ImageIcon(AssetImage('asset/images/arcticons_audiobookshelf.png')), label: 'Koleksi'),
            ]),
      );
    });
  }
}
