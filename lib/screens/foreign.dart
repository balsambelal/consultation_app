import 'package:consultation_app/models/sender.dart';
import 'package:consultation_app/models/sender.dart';
import 'package:consultation_app/models/sender.dart';
import 'package:consultation_app/services/sender_services.dart';
import 'package:flutter/material.dart';
import 'package:consultation_app/screens/new_inbox.dart';

import '../models/sender.dart';
import '../models/sender.dart';
import '../models/tag.dart';

class foreign extends StatefulWidget {

  static const id = 'foreign';

  const foreign({Key? key}) : super(key: key);

  @override
  State<foreign> createState() => _foreignState();
}

class _foreignState extends State<foreign> {
  List<sender> _senders = <sender>[];
  late Future<List<sender>> _future;

  @override
  void initState() {
    super.initState();
    _future = AllSendersApi().allSenders();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    /*24 is for notification bar on Android*/
    final double itemHeight = (size.height - kToolbarHeight - 24) / 8;
    final double itemWidth = size.width / 2;
   // Future<Map> sender =getsender();
   // print(sender);
    return Scaffold(
        backgroundColor: Color(0Xffeeeeee),
     appBar: AppBar(
       elevation: 0,
       backgroundColor:Color(0Xffeeeeee),
       leading: IconButton(
         onPressed:(){}, icon: Icon(Icons.dehaze_rounded),color: Colors.black,),
       actions: [
         IconButton(
           onPressed:(){}, icon: Icon(Icons.search),color: Colors.black,),
         IconButton(
           onPressed:(){}, icon: Icon(Icons.person),color: Colors.black,),
       ],),
    body: SafeArea(
    child: Column(children: [
      Container(
        padding: EdgeInsets.only(bottom: 16,right: 16,left: 16,top: 0),
        child: GridView.count(
          shrinkWrap: true,
          childAspectRatio: (itemWidth / itemHeight),

          //primary: false,
          //padding: const EdgeInsets.all(10),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          children: <Widget>[
            box(Colors.red, 2, 'inbox'),
            box(Colors.yellow, 9, 'panding'),
            box(Colors.blue, 5, 'in progers'),
            box(Colors.green, 5, 'completed'),

          ],
        ),
        // child: Column(
        //   mainAxisSize: MainAxisSize.min,
        //   children: [
        //     Row(
        //       children: [
        //       box(Colors.red, 2, 'inbox'),
        //       SizedBox(width: 16,),
        //       box(Colors.yellow, 9, 'panding'),
        //
        //     ],),
        //     SizedBox(height: 16,),
        //     Row(children: [
        //       box(Colors.blue, 5, 'in progers'),
        //       SizedBox(width: 16,),
        //       box(Colors.green, 5, 'completed'),
        //     ],),
        //   ],),),
      ),
      SizedBox(height: 20,),
      Container(
        padding: EdgeInsets.only(bottom: 16,right: 16,left: 16,top: 0),
        child: Row(children: [
          Text('Foreign',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
          SizedBox(width: 260,),
          IconButton(onPressed: (){}, icon: Icon(Icons.keyboard_arrow_down)),
        ],),
      ),
      Expanded(
          child:  FutureBuilder<List<sender>>(
    future: _future,
    builder: (context, snapshot) {
      if (snapshot.connectionState == ConnectionState.waiting) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      }
      else if (snapshot.hasData && snapshot.data!.isNotEmpty) {
        _senders = snapshot.data ?? [];
        return Container(
            margin: const EdgeInsets.only(left: 16, right: 16, bottom: 8),
            padding: const EdgeInsets.all(8),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: Expanded(
              child: ListView.builder(
                itemCount: _senders.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Text(_senders[index].name.toString())
                    ],
                  );
                },
              ),
            )
        );
      }
      else {
        return const Center(
          child: Text(
            'Error ',
            style:
            TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        );
      }
    }
          )
      ),
      // Expanded(
      //   child: ListView(
      //     padding: EdgeInsets.only(bottom: 16,right: 16,left: 16,top: 0),
      //     children: <Widget>[
      //       Card(
      //         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(22)),
      //         child: Row(
      //           children: [
      //             Column(
      //               mainAxisSize:MainAxisSize.min,
      //               children: <Widget>[
      //                 Expanded(child: Container(decoration: BoxDecoration(color: Colors.green, shape: BoxShape.circle),))
      //               ], //<Widget>[]
      //             ),
      //             Column(
      //               children: [
      //                 Text(sender().toJson()['name']??'name'),
      //               ],
      //             ),
      //           ],
      //         ),
      //       ),
      //       Card(
      //         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(22)),
      //         child: Column(
      //           children: [
      //             Padding(
      //               padding: const EdgeInsets.only(right: 16,left: 16),
      //               child: Row(
      //                 children: <Widget>[
      //                   Text('Other'
      //                     ,style: TextStyle(fontSize: 18.0),
      //                   ), //Text
      //                   SizedBox(width: 255), //SizedBox
      //                 ], //<Widget>[]
      //               ),
      //             ),
      //           ],
      //         ),
      //       ),
      //       Card(
      //         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(22)),
      //         child: Column(
      //           children: [
      //             Padding(
      //               padding: const EdgeInsets.only(right: 16,left: 16),
      //               child: Row(
      //                 children: <Widget>[
      //                   Text('Other'
      //                     ,style: TextStyle(fontSize: 18.0),
      //                   ), //Text
      //                   SizedBox(width: 255), //SizedBox
      //                 ], //<Widget>[]
      //               ),
      //             ),
      //           ],
      //         ),
      //       ),
      //     ],
      //   )
      // ),
      Container(
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(topRight: Radius.circular(22),topLeft: Radius.circular(22),bottomLeft: Radius.circular(0),bottomRight: Radius.circular(0)),
          color: Colors.white,
        ),
        child: TextButton(
          onPressed:(){
            Navigator.pushNamed(
              context,
              newInbox.id,
            );
          },
          child: Container(padding:EdgeInsets.only(right: 260),child: Row(
            children: [
              Icon(Icons.add_circle),
              SizedBox(width: 10,),
              Text('Add Image',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
            ],
          )),),)

    ],)
    ),

    );
  }
}

Widget box(Color color, int count, String text) {
  return Expanded(
    child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        padding: EdgeInsets.all(8),
        child: Column(
          children: [
            Row(
              children: [
                Container(decoration: BoxDecoration(
                    color: color, shape: BoxShape.circle),
                  width: 24,
                  height: 24,),
                SizedBox(width: 120,),
                Text('$count'),
              ],),
            SizedBox(height: 16,),
            Text('$text', style: TextStyle(color: Colors.grey),),
          ],
        )
    ),
  );
}