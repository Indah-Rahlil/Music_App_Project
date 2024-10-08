import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:music_app/widgets/text_field.dart';
import 'package:music_app/widgets/my_button.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController userController = TextEditingController();
    TextEditingController passController = TextEditingController();

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment(0.27, -0.96),
            end: Alignment(-0.27, 0.96),
            colors: [Color(0xFF4E65B7), Color(0xFFA86060)],
          ),
        ),
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children:
            [
              Spacer(),
              Container(height: 180, width: 200,
              child: Image.asset('asset/images/logo.png',),),

              SizedBox(height: 50,),

              Text('Masuk', style: TextStyle(fontSize: 18, fontFamily: 'Josefin Sans', fontWeight: FontWeight.w400, color: Colors.white),),

              SizedBox(height: 10,),

              Container(width: 250, height: 35,
              child: MyTextField(hintText: 'Username atau Email', obscureText: false, textController: userController),),

              SizedBox(height: 5,),

              Container(width: 250, height: 35,
              child: MyTextField(hintText: 'Password', obscureText: true, textController: passController),),

              SizedBox(height: 20,),

              Container(height: 35, width: 200,
              child: ElevatedButton(onPressed: (){
                Get.toNamed('/dashboard');
              },
                child: Text('Login',
                  style: TextStyle(color: Colors.white,fontSize: 12,fontFamily: 'Josefin Sans'),),
                style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF304D6F),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3),),),)),

              SizedBox(height: 50,),

              Container(width: 250,
                  child: RichText(text: TextSpan(style: TextStyle(fontSize: 13, color: Colors.white, fontFamily: 'Josefin Sans',),
              children: [
                TextSpan(text:'Kamu belum punya akun? '),
                TextSpan(text: 'Buat akun ', style: TextStyle(color: Color(0xFF1E3958), fontStyle: FontStyle.italic,  fontFamily: 'Josefin Sans',)),
                TextSpan(text: 'untuk dapatkan pengalaman yang lebih baik')
              ]),)),
              SizedBox(height: 20,)
            ],
          ),
        ),
      ),
    );
  }
}
