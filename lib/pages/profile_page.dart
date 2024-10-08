import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
          gradient: LinearGradient(
          begin: Alignment(0.00, -1.00),
          end: Alignment(0, 1),
          colors: [Color(0xFF5A7FAC), Color(0xFF304D6F), Color(0xFF1D344A)],),),
          child: Center(
            child: Column(children: [
              SizedBox(height: 30,),
              Row(children: [
                TextButton(onPressed: (){
                  Get.offNamed('/dashboard');
                },
                    child: ImageIcon(AssetImage('asset/images/ic_outline-arrow-back.png'), color: Colors.white, size: 30,)),
                Spacer(),
                ImageIcon(AssetImage('asset/images/logo.png'), color: Color(0xFFFFFFFF), size: 50,),
                SizedBox(width: 20,)
              ],),
              SizedBox(height: 45,),
              Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipOval(child: Image.asset('asset/images/profile.png', width: 120, height: 120, fit: BoxFit.cover,),),
                SizedBox(width: 15,),
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text('Indah Rahlil', style: TextStyle(fontFamily: 'Josefin Sans', color: Colors.white, fontSize: 20,), textAlign: TextAlign.left,),
                  Container(
                      child: RichText(text: TextSpan(style: TextStyle(fontSize: 13, color: Colors.white, fontFamily: 'Josefin Sans',),
                          children: [
                            TextSpan(text:'0 '),
                            TextSpan(text: 'pengikut • ', style: TextStyle(color: Color(0xFF1E3958),)),
                            TextSpan(text: '0 '),
                            TextSpan(text: 'mengikuti', style: TextStyle(color: Color(0xFF1E3958),))
                          ]),)),
                ],)
              ],),
              SizedBox(height: 50,),
              Row(children: [
                SizedBox(width: 20,),
                Text('Playlist', style: TextStyle(fontFamily: 'Josefin Sans', color: Colors.white, fontSize: 18,),),
              ],),
              SizedBox(height: 100,),
              Text('Belum memiliki playlist', style: TextStyle(fontFamily: 'Josefin Sans', color: Color(0xFF8E99A4), fontSize: 15, fontWeight: FontWeight.w100),)
            ],),
          ),
      )
    );
  }
}
