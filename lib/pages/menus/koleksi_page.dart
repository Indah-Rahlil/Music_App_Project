import 'package:flutter/material.dart';
import 'package:music_app/widgets/button_circle.dart';
import 'package:get/get.dart';

class KoleksiPage extends StatelessWidget {
  const KoleksiPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          decoration: BoxDecoration(color: Color(0xFF1D344A)),
          child: Center(child: Column(
          children: [
            SizedBox(height: 30,),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ButtonCircle(imagePath: 'asset/images/profile.png', onPressed: () {
                  Get.offNamed('/profile');
                },),
                SizedBox(width: 10,),
                Text('Koleksi', style: TextStyle(fontSize: 20, fontFamily: 'Josefin Sans', color: Colors.white),),
                Spacer(),
                ImageIcon(AssetImage('asset/images/logo.png'), color: Color(0xFFFFFFFF), size: 40,),
                SizedBox(width: 20,)
              ],),
            SizedBox(height: 50,),
            Container(child: Row(children: [
              SizedBox(width: 10,),
              Container(width: 70, height: 70,
                decoration: ShapeDecoration(gradient: LinearGradient(begin: Alignment(0.62, -0.78),
                    end: Alignment(-0.62, 0.78),
                    colors: [Color(0xFFA292DC), Color(0xFF8EB0DB)],),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2)),
                ),
              alignment: Alignment.center,
              child: ImageIcon(AssetImage('asset/images/weui_like-filled.png'), color: Colors.white, size: 35,),),
              Row(children: [
                SizedBox(width: 10,),
                Column(children: [
                  Text('Lagu yang disukai', style: TextStyle(fontFamily: 'Josefin Sans', fontSize: 15, color: Colors.white),),
                  Row(
                    children: [
                    ImageIcon(AssetImage('asset/images/tabler_pin-filled.png'), color: Colors.white, size: 15,),
                    SizedBox(width: 5,),
                    Text('Playlist • 3 lagu', style: TextStyle(fontFamily: 'Josefin Sans', color: Color(0xFF8E99A4), fontSize: 12),)
                  ],)
                ],)
              ],)
            ],),),
            SizedBox(height: 30,),
            
            Row(children: [
              SizedBox(width: 36,),
              ImageIcon(AssetImage('asset/images/twemoji_plus.png'), color: Colors.white, size: 20,),
              SizedBox(width: 40,),
              Text('Tambahkan artis', style: TextStyle(fontFamily: 'Josefin Sans', fontSize: 15, color: Colors.white),)
            ],),

            SizedBox(height: 30,),

            Row(children: [
              SizedBox(width: 36,),
              ImageIcon(AssetImage('asset/images/twemoji_plus.png'), color: Colors.white, size: 20,),
              SizedBox(width: 40,),
              Text('Tambahkan Playlist', style: TextStyle(fontFamily: 'Josefin Sans', fontSize: 15, color: Colors.white),)
            ],)
          ],
        )),)
    );
  }
}
