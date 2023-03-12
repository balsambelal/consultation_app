import 'package:consultation_app/services/sender_services.dart';
import 'package:flutter/material.dart';

class sender extends StatefulWidget {
  static const id = 'sender';

  const sender({Key? key}) : super(key: key);

  @override
  State<sender> createState() => _senderState();
}

class _senderState extends State<sender> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Color(0Xffeeeeee),
          body: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22),
                        color: Colors.white,
                      ),
                      child: Row(
                        children: [
                          IconButton(onPressed: (){}, icon: Icon(Icons.search)),
                          TextField(decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Search',
                            
                          )),
                          IconButton(onPressed: (){}, icon: Icon(Icons.cancel)),
                        ],
                      ),
                    ),
                  ),
                  TextButton(onPressed: (){}, child: Text('Cancel')),
                ],
              ),

              // SingleChildScrollView(
              //   child: Column(
              //     children: [
              //       Text('Foreign'),
              //       ListView.builder(
              //           itemCount: 6,
              //           itemBuilder: (BuildContext context, int index) {
              //             return ListTile(
              //                 leading: const Icon(Icons.person),
              //                 trailing: const Text(
              //                   "name",
              //                   style: TextStyle(color: Colors.black, fontSize: 15),
              //                 ),
              //                 title: Text("number"));
              //           }),
              //       Text('Foreign'),
              //       ListView.builder(
              //           itemCount: 3,
              //           itemBuilder: (BuildContext context, int index) {
              //             return ListTile(
              //                 leading: const Icon(Icons.person),
              //                 trailing: const Text(
              //                   "",
              //                   style: TextStyle(color: Colors.black, fontSize: 15),
              //                 ),
              //                 title: Text(""));
              //           }),
              //     ],
              //   ),
              // ),
            ],
          ),
    ));
  }
}
