import 'package:flutter/material.dart';
import 'package:flutter_app/app/fragments/call_fragment.dart';
import 'package:flutter_app/app/fragments/chat_fragment.dart';
import 'package:flutter_app/app/fragments/community_fragment.dart';
import 'package:flutter_app/app/fragments/status_fragment.dart';
import 'package:flutter_app/app/widgets/menu_option/menu.dart';

class Home extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new _HomeState();
  }

}

class _HomeState extends State<Home>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF25D366),
          actions: [

            IconButton(icon: Icon(Icons.camera_alt), onPressed: ()=>{
              //TODO when it pressed
            }),
            IconButton(icon: Icon(Icons.search), onPressed: ()=>{
              //TODO when it pressed
            }),
            PopupMenuButton(itemBuilder: (BuildContext ctx){
              int index = DefaultTabController.of(ctx).index;
              if(index==0){
                return groupMenu();
              }else if(index==1){
                return chatMenu();
              }else if(index==2){
                return statusMenu();
              }else{
                return callMenu();
              }
            })
          ],
          title: Text('Andri Nova Riswanto'),
          bottom: TabBar(
            indicatorColor: Colors.white,
            tabs: [
              Tab(icon: Icon(Icons.people)),
              Tab(text: 'Chats'),
              Tab(text: 'Status',),
              Tab(text: 'Calls',)
            ],
          ),
        ),
        body: TabBarView(children: [
          CommunityFragment(),
          ChatFragment(),
          StatusFragment(),
          CallFragment()
        ]),
      ),
    );
  }

}