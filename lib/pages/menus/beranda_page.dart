import 'package:flutter/material.dart';
import 'package:music_app/adapter/adapter_lagu.dart';
import '../../widgets/button_circle.dart';
import 'package:get/get.dart';
import 'package:music_app/model/model_lagu.dart';
import 'package:music_app/model/model_album.dart';
import 'package:music_app/adapter/adapter_album.dart';

class BerandaPage extends StatelessWidget {
  const BerandaPage({super.key});

  @override
  Widget build(BuildContext context) {
    
    List<ModelLagu> dataLagu = [
      ModelLagu('1', 'asset/images/gala_bunga.png', "Gala Bunga Matahari", 'Sal Priadi'),
      ModelLagu('2', 'asset/images/satu_bulan.png', 'Satu Bulan', 'Bernadya'),
      ModelLagu('3', 'asset/images/we-pray-coldplay.png', 'WE PRAY', 'Coldplay'),
      ModelLagu('4', 'asset/images/images.png', 'Why I Love You So', 'Alok, James Hurr & Supafly'),
      ModelLagu('5', 'asset/images/sial.png', 'Sialan', 'Andrian Khalif & Juicy Luicy'),
      ModelLagu('6', 'asset/images/rio-calpady.png', 'Bunga Abadi', 'Rio Calpady'),
      ModelLagu('7', 'asset/images/kata-mereka.png', 'Kata Mereka Ini Berlebihan', 'Bernadya'),
      ModelLagu('8', 'asset/images/ka_tingling.png', 'Work It', 'K.A. Tingling'),
      ModelLagu('9', 'asset/images/billie-eillish.png', 'BIRDS OF FEATHER', 'Billie Eillish'),
      ModelLagu('10', 'asset/images/lama-lama.png', 'Lama-Lama', 'Bernadya'),
    ];

    List<ModelAlbum> dataAlbum = [
      ModelAlbum('asset/images/lama-lama.png', 'Lama-Lama', 'Bernadya'),
      ModelAlbum('asset/images/rio-calpady.png', 'Bunga abadi', 'Rio Calpady'),
      ModelAlbum('asset/images/gala_bunga.png', 'Gala Bunga M...', 'Sal Priadi'),
      ModelAlbum('asset/images/we-pray-coldplay.png', 'WE PRAY', 'Coldplay'),
      ModelAlbum('asset/images/satu_bulan.png', 'Satu Bulan', 'Bernadya')
    ];

    List<ModelAlbum> dataPlaylist = [
      ModelAlbum('asset/images/kata-mereka.png', 'Bernadya, Rio Cal...', ''),
      ModelAlbum('asset/images/ka_tingling.png', 'K.A. Tingling, Billie E...', '')
    ];
    
    return Scaffold(
        body: Container(
          decoration: BoxDecoration(color: Color(0xFF1D344A)),
          child: SingleChildScrollView(child: Column(children: [
            SizedBox(height: 30,),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ButtonCircle(imagePath: 'asset/images/profile.png', onPressed: () {
                  Get.offNamed('/profile');
                },),
                SizedBox(width: 10,),
                Text('Beranda', style: TextStyle(fontSize: 20, fontFamily: 'Josefin Sans', color: Colors.white),),
                Spacer(),
                ImageIcon(AssetImage('asset/images/logo.png'), color: Color(0xFFFFFFFF), size: 40,),
                SizedBox(width: 20,)
              ],),
            SizedBox(height: 30,),
            Row(children: [SizedBox(width: 20  ,), Text('Populer', style: TextStyle(fontFamily: 'Josefin Sans', color: Colors.white, fontSize: 20),), Spacer()],),
            SizedBox(height: 5,),
            Container(height: 180, width: 500, decoration: BoxDecoration(color: Color(0xFF304D6F)),
                child: Expanded(child: ListView.builder(
                  itemCount: 5,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index){
                    return AdapterLagu(modelLagu: dataLagu[index]);
                  },)) ),
            SizedBox(height: 40,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: RichText(
                  text: TextSpan(
                    style: TextStyle(fontSize: 20, color: Colors.white, fontFamily: 'Josefin Sans'),
                    children: [
                      TextSpan(text: 'Sering diputar '),
                      TextSpan(text: 'oleh anda', style: TextStyle(fontSize: 13)),
                    ],),
                ),),),
            SizedBox(height: 5,),
            Container(height: 180, width: 500, decoration: BoxDecoration(color: Color(0xFF304D6F)),
                child: Expanded(child: ListView.builder(
                  itemCount: 5,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index){
                    int actualIndex = index + 5;
                    return AdapterLagu(modelLagu: dataLagu[actualIndex]);
                  },)) ),
            SizedBox(height: 40,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: RichText(
                  text: TextSpan(
                    style: TextStyle(fontSize: 20, color: Colors.white, fontFamily: 'Josefin Sans'),
                    children: [
                      TextSpan(text: 'Rekomendasi '),
                      TextSpan(text: 'untuk anda', style: TextStyle(fontSize: 13)),
                    ],),
                ),),),
            Container(height: 150, width: 500, decoration: BoxDecoration(color: Color(0xFF304D6F)),
                alignment: Alignment.centerRight,
                child: Expanded(child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: dataAlbum.length,
                  itemBuilder: (context, index){
                    return Row(children: [
                      SizedBox(width: 10,),
                      AdapterAlbum(modelAlbum: dataAlbum[index]),
                      SizedBox(width: 10)
                    ],);
                  },)) ),
            SizedBox(height: 40,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: RichText(
                  text: TextSpan(
                    style: TextStyle(fontSize: 20, color: Colors.white, fontFamily: 'Josefin Sans'),
                    children: [
                      TextSpan(text: 'Playlist '),
                      TextSpan(text: 'untuk anda', style: TextStyle(fontSize: 13)),
                    ],),
                ),),),
            Container(height: 150, width: 500, decoration: BoxDecoration(color: Color(0xFF304D6F)),
                alignment: Alignment.centerRight,
                child: Expanded(child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: dataPlaylist.length,
                  itemBuilder: (context, index){
                    return Row(children: [
                      SizedBox(width: 10,),
                      AdapterAlbum(modelAlbum: dataPlaylist[index]),
                      SizedBox(width: 10)
                    ],);
                  },)) ),
          ],),) ),
    );
  }
}
