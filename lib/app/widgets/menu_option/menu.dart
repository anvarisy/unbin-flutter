import 'package:flutter/material.dart';


List<PopupMenuItem> groupMenu(){
  return[
    PopupMenuItem(child: Text("Settings"))
  ];
}

List<PopupMenuItem> chatMenu(){
  return[
    PopupMenuItem(child: Text("New group")),
    PopupMenuItem(child: Text("New broadcast")),
    PopupMenuItem(child: Text("Linked devices")),
    PopupMenuItem(child: Text("Starred messages")),
    PopupMenuItem(child: Text("Settings"))
  ];
}

List<PopupMenuItem> statusMenu(){
  return[
    PopupMenuItem(child: Text("Status privacy")),
    PopupMenuItem(child: Text("Settings"))
  ];
}

List<PopupMenuItem> callMenu(){
  return[
    PopupMenuItem(child: Text("Clear call log")),
    PopupMenuItem(child: Text("Settings")),
  ];
}