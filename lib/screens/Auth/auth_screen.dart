import 'package:consultation_app/models/email.dart';
import 'package:consultation_app/services/user_services.dart';
import 'package:consultation_app/screens/Auth/siginUp_screen.dart';
import 'package:consultation_app/screens/foreign.dart';
import 'package:flutter/material.dart';

class loginScreen extends StatelessWidget {
  static const id = 'loginScreen';
  //const Auth({Key? key}) : super(key: key);
  String? email;
  String? password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0Xffeeeeee),
      body: Stack(
        alignment: Alignment.center,
        children: [
        Positioned(
          top: -200,
          child: Container(
            width:500,
            height:500,
            decoration: BoxDecoration(
              color: Colors.indigo,
                shape: BoxShape.circle),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image(image: AssetImage('images/logop.png'),width: 100,height: 120,),
                Text('ديوان رئيس الوزراء',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                SizedBox(height: 140,)
              ],
            ),
          ),
        ),
        Center(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 24,vertical: 54),
            margin: EdgeInsets.all(24),
            decoration: BoxDecoration(
           color: Colors.white,
            borderRadius: BorderRadius.circular(36),
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment:MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 44,vertical: 2),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [
                          Colors.indigo,
                          Colors.indigoAccent
                        ],
                            end:Alignment.centerLeft,
                            begin: Alignment.centerRight),
                        borderRadius: BorderRadius.circular(22),
                      ),
                      child: TextButton(child: Text('Login',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),), onPressed: () {  },),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 44,vertical: 2),
                      decoration: BoxDecoration(
                        gradient: null,
                        borderRadius: BorderRadius.circular(22),

                      ),
                      child:TextButton(child:  Text('SiginUp',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.indigo,
                        ),),onPressed: (){Navigator.pushNamedAndRemoveUntil(
                        context,
                        signUp.id,
                            (r) => false,
                      );},),
                    ),
                  ],
                ),
                SizedBox(height: 34,),
                TextField(decoration: InputDecoration( labelText: 'Enter Email',),onChanged: (value){email=value;},),
                TextField(
                    obscureText: true,
                    decoration: InputDecoration( labelText: 'Password',),onChanged: (value){password=value;}),
                SizedBox(height: 74,),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 80,vertical: 12),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Colors.indigo,
                      Colors.indigoAccent
                    ],
                    end:Alignment.centerLeft,
                    begin: Alignment.centerRight),
                    borderRadius: BorderRadius.circular(22),
                  ),
                  child: TextButton(
                    onPressed: () async {
                      print(email);
                      if (email != null && password != null) {
                        login(email!, password!);
                        Navigator.of(context).pushNamed(
                          foreign.id,
                        );
                      }
                    },

                    child: Text('LogIn',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),),),
                )
              ],
            ),
          ),),
        ),
      ],),
    );
  }
}
