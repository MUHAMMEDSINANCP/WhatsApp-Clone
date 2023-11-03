import 'package:flutter/material.dart';
import 'package:whatsapp_ui/components/calls_tiles.dart';
import 'package:whatsapp_ui/components/divider.dart';
import 'package:whatsapp_ui/screens/chatscreen.dart';
import 'package:whatsapp_ui/screens/status_screen.dart';

import '../whatsapp_data.dart';

Data callList = Data();

class CallScreen extends StatelessWidget {
  const CallScreen({super.key});
  static const String id = 'call screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xff075e54),
        title: const Text(
          'WhatsApp',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              size: 28,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_vert_rounded,
              size: 28,
            ),
          ),
        ],
        bottom: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: const Color(0xff075e54),
          leading: SizedBox(
            child: Icon(
              Icons.camera_alt_rounded,
              color: Colors.white.withOpacity(0.5),
              size: 28,
            ),
          ),
          actions: [
            Container(
              width: 80,
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: Colors.transparent, width: 5),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, ChatScreen.id);
                      },
                      child: Text(
                        'CHATS',
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.5),
                          fontSize: 18,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: 115,
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: Colors.transparent, width: 5),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, StatusScreen.id);
                      },
                      child: Text(
                        'STATUS',
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.5),
                          fontSize: 18,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: 115,
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: Colors.white, width: 5),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: GestureDetector(
                      onTap: () {},
                      child: const Text(
                        'CALLS',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: SizedBox(
        width: 70,
        height: 70,
        child: FittedBox(
          child: FloatingActionButton(
            onPressed: () {},
            backgroundColor: const Color(0xff25d366),
            child: const Icon(
              Icons.add_call,
              color: Colors.white,
              size: 20,
            ),
          ),
        ),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => CallTile(
          name: callList.calls.values.elementAt(index).elementAt(0) as String,
          image: callList.calls.values.elementAt(index).elementAt(1) as String,
          videocall: callList.calls.values.elementAt(index).elementAt(2) as int,
          isMissed: callList.calls.values.elementAt(index).elementAt(3) as bool,
          inComing: callList.calls.values.elementAt(index).elementAt(4) as bool,
          time: callList.calls.values.elementAt(index).elementAt(5) as String,
        ),
        separatorBuilder: (context, index) =>
            callList.calls.values.elementAt(index).elementAt(6) as bool
                ? const SizedBox(
                    height: 10,
                  )
                : const Seperator(),
        itemCount: callList.calls.length,
      ),
    );
  }
}
