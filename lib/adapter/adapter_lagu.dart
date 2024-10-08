import 'package:flutter/material.dart';
import 'package:music_app/model/model_lagu.dart';

class AdapterLagu extends StatelessWidget {
  final ModelLagu modelLagu;
  const AdapterLagu({super.key, required this.modelLagu});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        Row(children: [
          SizedBox(width: 10,),
          Text(modelLagu.urut, style: TextStyle(
              fontFamily: 'Josefin Sans', color: Colors.white, fontSize: 10),),
          SizedBox(width: 8,),
          Image.asset(modelLagu.imagePath, width: 24, height: 24,),
          SizedBox(width: 10,),
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(modelLagu.judul, style: TextStyle(fontFamily: 'Josefin Sans', color: Colors.white, fontSize: 10),),
            Text(modelLagu.artis, style: TextStyle(fontFamily: 'Josefin Sans', color: Color(0xFF8E99A4), fontSize: 10),)
          ],)
        ],),
        SizedBox(height: 5,)
      ],)
    );
  }
}
