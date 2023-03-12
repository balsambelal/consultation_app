import 'package:consultation_app/screens/senders.dart';
import 'package:consultation_app/screens/category.dart';
import 'package:flutter/material.dart';
class newInbox extends StatelessWidget {
  static const id = 'newInbox';
  const newInbox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child:
    Scaffold(
      backgroundColor: Color(0Xffeeeeee),
      appBar: AppBar(
        elevation: 0,
        backgroundColor:Color(0Xffeeeeee),
        leading: IconButton(
          onPressed:(){ Navigator.pop(context);},
          icon: Icon(Icons.arrow_back_ios),color: Colors.black,),
         title: Center(child: Text('New Inbox',style: TextStyle(color: Colors.black),),),
        actions: [
          TextButton(
            onPressed:(){}, child: Text('Done',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),),
        ],),
      body: Container(
        padding: EdgeInsets.only(bottom: 0,right: 8,left: 8,top: 8),
        child: Column(children: [
          Expanded(
            flex: 3,
            child: Container(
              padding: EdgeInsets.only(bottom: 0,right: 16,left: 16,top: 0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                color: Colors.white,
              ),
              child: SingleChildScrollView(
                child:Column(
                children: [
                  TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Sender',
                      icon: Icon(Icons.people), //icon at head of input
                      suffixIcon:IconButton(onPressed: () { Navigator.pushNamed(
                        context,
                        sender.id,
                      ); }, icon: Icon(Icons.info_outline),
                       ) //icon at tail of input
                  )),
                  TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Mobile',
                      icon: Icon(Icons.phone_android), //icon at head of input
                  )),
                  TextButton(onPressed: (){
                    Navigator.pushNamed(
                      context,
                      category.id,
                    );
                  }, child:Row(children: [
                    Text('Category',style: TextStyle(color: Colors.black,fontSize: 16),),
                    SizedBox(width: 225,),
                    Text('Other',style: TextStyle(color: Colors.black,fontSize: 12)),
                    SizedBox(width: 4,),
                    Icon(Icons.arrow_forward_ios,size: 12,color: Colors.black,),
                  ],)),
                ],
              ),),

            ),
          ),
          SizedBox(height: 8,),
          Expanded(
            flex: 2,
            child: Container(
              padding: EdgeInsets.only(bottom: 0,right: 16,left: 16,top: 0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                color: Colors.white,
              ),
              child: SingleChildScrollView(
                child:Column(
                children: [
                  TextField(
                      style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Title of Mail',
                      )),
                  TextField(
                    style: TextStyle(fontSize: 14),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Descrption',
                      )),
                ],
              ),),

            ),
          ),
          SizedBox(height: 8,),
          Expanded(
            flex: 2,
            child: Container(
              padding: EdgeInsets.only(bottom: 2,right: 16,left: 16,top: 0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                color: Colors.white,
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            label: Column(
                              children: [
                                Text('Date',style: TextStyle(color: Colors.black),),
                                Text('2 مارس 2023 ',style: TextStyle(color: Colors.black,fontSize: 10),),
                              ],
                            ),
                            icon: Icon(Icons.date_range,color: Colors.pink,), //icon at head of input
                            suffixIcon: Icon(Icons.arrow_forward_ios,size: 14,) //icon at tail of input
                        )),
                    TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            label: Column(
                              children: [
                                Text('Archeved Number',style: TextStyle(color: Colors.black),),
                                SizedBox(height: 12,),
                                Text('Like 202/2023',style: TextStyle(color: Colors.black,fontSize: 12),),
                              ],
                            ),
                            icon: Icon(Icons.archive_outlined), //icon at head of input
                        )),

                  ],
                ),
              ),

            ),
          ),
          SizedBox(height: 8,),
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.only(bottom: 8,right: 16,left: 16,top: 8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                color: Colors.white,
              ),
              child: TextButton(
                onPressed: (){},
                child: Row(children: [
                  Icon(Icons.tag_outlined,size: 24,color: Colors.black,),
                  SizedBox(width: 20,),
                  Text('Tags',style: TextStyle(color: Colors.black,fontSize: 14),),
                  SizedBox(width: 240,),
                  Icon(Icons.arrow_forward_ios,size: 14,color: Colors.black,)
                ],),
              ),
            ),
          ),
          SizedBox(height: 8,),
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.only(bottom: 8,right: 16,left: 16,top: 8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                color: Colors.white,
              ),
              child: TextButton(
                onPressed: (){},
                child: Row(children: [
                  Icon(Icons.arrow_circle_right_outlined,size: 24,color: Colors.black,),
                  SizedBox(width: 20,),
                  Container(
                    width: 60,
                     height: 40,
                      decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(36),
                    color: Colors.pink,
                  ),child: Center(child: Text('Inbox',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),))),
                  SizedBox(width: 210,),
                  Icon(Icons.arrow_forward_ios,size: 14,color: Colors.black,)
                ],),
              ),
            ),
          ),
          SizedBox(height: 8,),
          Expanded(
            flex: 2,
            child: Container(
              padding: EdgeInsets.only(bottom: 0,right: 16,left: 16,top: 0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                color: Colors.white,
              ),
              child: SingleChildScrollView(
                child:Column(
                  children: [
                    TextField(
                        style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Descrption',
                        )),
                    TextField(
                        style: TextStyle(fontSize: 14),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Descrption',
                        )),
                  ],
                ),),

            ),
          ),
          SizedBox(height: 8,),
          Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topRight: Radius.circular(22),topLeft: Radius.circular(22),bottomLeft: Radius.circular(0),bottomRight: Radius.circular(0)),
                  color: Colors.white,
                ),
                child: TextButton(
                  onPressed:(){},
                  child: Container(padding:EdgeInsets.only(right: 270),child: Text('Add Image',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),)),),))
        ],),
      ),
    ));
  }
}
