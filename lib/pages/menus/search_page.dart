import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:music_app/widgets/text_field.dart';
import 'package:music_app/widgets/my_button.dart';
import '../../widgets/button_circle.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController searchController = TextEditingController();
    
    return Scaffold(
        body: Container(
          decoration: BoxDecoration(color: Color(0xFF1D344A)),
          child: Center(child: Column(children: [
            SizedBox(height: 30,),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ButtonCircle(imagePath: 'asset/images/profile.png', onPressed: () {
                  Get.offNamed('/profile');
                },),
                SizedBox(width: 10,),
                Text('Cari', style: TextStyle(fontSize: 20, fontFamily: 'Josefin Sans', color: Colors.white),),
                Spacer(),
                ImageIcon(AssetImage('asset/images/logo.png'), color: Color(0xFFFFFFFF), size: 40,),
                SizedBox(width: 20,)
              ],),
            SizedBox(height: 50,),
            
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(width: 280, height: 35,
              child: MyTextField(hintText: 'Apa yang ingin kamu putar?', obscureText: false, textController: searchController),),
              SizedBox(width: 8,),
              ImageIcon(AssetImage('asset/images/iconamoon_search-bold.png'), color: Colors.white, size: 25,),
            ],),

            SizedBox(height: 30,),

            Row(children: [
              SizedBox(width: 20,),
              Text('Browse semua', style: TextStyle(fontFamily: 'Josefin Sans', fontSize: 18, color: Colors.white),),
              Spacer()
            ],),

            SizedBox(height: 7,),

            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(width: 150, height: 60,
              child: MyButton(hintText: 'Dibuat untuk kamu', bgColor: Color(0xFF3984B3)),),
              SizedBox(width: 10,),
              Container(width: 150, height: 60,
                child: MyButton(hintText: 'Pop', bgColor: Color(0xFFDB2197)),),
            ],),

            SizedBox(height: 10,),

            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(width: 150, height: 60,
                child: MyButton(hintText: 'Rock', bgColor: Color(0xFFD20303)),),
              SizedBox(width: 10,),
              Container(width: 150, height: 60,
                child: MyButton(hintText: 'Folk & Akustik', bgColor: Color(0xFF86B117)),),
            ],),

            SizedBox(height: 10,),

            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(width: 150, height: 60,
                child: MyButton(hintText: 'Musik Indonesia', bgColor: Color(
                    0xFFE86914)),),
              SizedBox(width: 10,),
              Container(width: 150, height: 60,
                child: MyButton(hintText: 'Indie', bgColor: Color(0xFF870C29)),),
            ],),
          ],),),
        )
    );
  }
}
