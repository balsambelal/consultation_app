import 'package:flutter/material.dart';
class category extends StatefulWidget {
  static const id = 'category';

  const category({Key? key});

  @override
  State<category> createState() => _categoryState();
}

class _categoryState extends State<category> {
  @override
  Widget build(BuildContext context) {
    bool ischeck= false;
    return SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              Row(children: [
                IconButton(onPressed: (){
                  Navigator.pop(context);
                }, icon: Icon(Icons.arrow_back_ios,color: Colors.black,),),
                SizedBox(width: 120,),
                Text('Category',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),

              ],),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(22)),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 16,left: 16),
                        child: Row(
                          children: <Widget>[
                            Text('Other'
                              ,style: TextStyle(fontSize: 18.0),
                            ), //Text
                            SizedBox(width: 255), //SizedBox
                            Checkbox(
                              value: ischeck,
                              onChanged: (bool? value) {
                                setState(() {
                                  value = ischeck;
                                });
                              },
                            ), //Checkbox
                          ], //<Widget>[]
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 16,left: 16),
                        child: Row(
                          children: <Widget>[
                            Text('Offitialy Orgnaization'
                              ,style: TextStyle(fontSize: 18.0),
                            ), //Text
                            SizedBox(width: 255), //SizedBox
                            Checkbox(
                              value: ischeck,
                              onChanged: (bool? value) {
                                setState(() {
                                  value = ischeck;
                                });
                              },
                            ), //Checkbox
                          ], //<Widget>[]
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 16,left: 16),
                        child: Row(
                          children: <Widget>[
                            Text('NGOs'
                              ,style: TextStyle(fontSize: 18.0),
                            ), //Text
                            SizedBox(width: 255), //SizedBox
                            Checkbox(
                              value: ischeck,
                              onChanged: (bool? value) {
                                setState(() {
                                  value = ischeck;
                                });
                              },
                            ), //Checkbox
                          ], //<Widget>[]
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(right: 16,left: 16),
                        child: Row(
                          children: <Widget>[
                            Text('Foregin'
                              ,style: TextStyle(fontSize: 18.0),
                            ), //Text
                            SizedBox(width: 255), //SizedBox
                            Checkbox(
                              value: ischeck,
                              onChanged: (bool? value) {
                                setState(() {
                                  value = ischeck;
                                });
                              },
                            ), //Checkbox
                          ], //<Widget>[]
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
    ));
  }
}
