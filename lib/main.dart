import 'package:flutter/material.dart';
import 'package:whatsapp_ui/screens/calls_screen.dart';
import 'package:whatsapp_ui/screens/chatscreen.dart';
import 'package:whatsapp_ui/screens/status_screen.dart';

void main() {
  runApp( MaterialApp(

    initialRoute: ChatScreen.id,
    routes: {
      ChatScreen.id :(ctx)=> const ChatScreen(),
      StatusScreen.id :(ctx)=> const StatusScreen(),
      CallScreen.id :(ctx)=> const CallScreen(),
    },
    debugShowCheckedModeBanner: false,

  ));
}