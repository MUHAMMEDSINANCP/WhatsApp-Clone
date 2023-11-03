import 'package:flutter/material.dart';
import 'package:whatsapp_ui/components/chat_tile.dart';
import 'package:whatsapp_ui/components/divider.dart';
import 'package:whatsapp_ui/screens/calls_screen.dart';
import 'package:whatsapp_ui/screens/status_screen.dart';
import 'package:whatsapp_ui/whatsapp_data.dart';

Data data = Data();

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  static const String id = 'chat screen';

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
          leading: Container(
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
                        'CHATS',
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
                        Navigator.pushNamed(context, CallScreen.id);
                      },
                      child: Text(
                        'CALLS',
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
          ],
        ),
      ),
      floatingActionButton: SizedBox(
        width: 70,
        height: 70,
        child: FittedBox(
          child: FloatingActionButton(
            onPressed: () {},
            backgroundColor: const Color(0xff25D366),
            child: const Icon(
              Icons.message,
            ),
          ),
        ),
      ),
      body: ListView.separated(
          padding: const EdgeInsets.only(top: 7),
          itemBuilder: (context, index) => ChatTile(
                name: data.chat.values.elementAt(index).elementAt(0) as String,
                image: data.chat.values.elementAt(index).elementAt(1),
                message:
                    data.chat.values.elementAt(index).elementAt(2) as String,
                time: data.chat.values.elementAt(index).elementAt(3) as String,
                // time: data.chat.values.elementAt(index).elementAt(3)?? '',     (this way also you can do it sinan)
              ),
          separatorBuilder: (context, index) => const Seperator(),
          itemCount: data.chat.length),
    );
  }
}
