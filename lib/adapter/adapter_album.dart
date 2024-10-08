import 'package:flutter/material.dart';
import 'package:music_app/model/model_album.dart';

class AdapterAlbum extends StatelessWidget {
  final ModelAlbum modelAlbum;
  const AdapterAlbum({super.key, required this.modelAlbum});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        SizedBox(height: 20,),
        Image.asset(modelAlbum.imagePath, width: 85, height: 85, ),
        SizedBox(height: 7,),
        Text(modelAlbum.namaAlbum, style: TextStyle(fontFamily: 'Josefin Sans', color: Colors.white, fontSize: 10),),
        if (modelAlbum.artis != null && modelAlbum.artis.isNotEmpty)
        RichText(
          textAlign: TextAlign.left,
          text: TextSpan(
            style: TextStyle(fontSize: 10, color: Color(0xFF8E99A4), fontFamily: 'Josefin Sans'),
            children: [
              TextSpan(text: 'Album • '),
              TextSpan(text: modelAlbum.artis,),
            ],),
        ),
      ],),
    );
  }
}
