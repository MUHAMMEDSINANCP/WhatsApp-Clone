import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_ui/components/message_bubble.dart';
import 'package:whatsapp_ui/screens/chatscreen.dart';
import '../whatsapp_data.dart';

Data data = Data();

class ChatRoomScreen extends StatefulWidget {
  final String name;
  final String? image;

  const ChatRoomScreen({super.key, required this.name, required this.image});

  @override
  State<ChatRoomScreen> createState() => _ChatRoomScreenState();
}

class _ChatRoomScreenState extends State<ChatRoomScreen> {
  TextEditingController textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xff075e54),
        title: Row(
          children: [
            widget.image != null
                ? CircleAvatar(
                    radius: 18,
                    backgroundImage: AssetImage(widget.image!),
                  )
                : Container(
                    width: 36,
                    height: 36,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    child: Icon(
                      Icons.account_circle,
                      size: 36,
                      color: Colors.grey.shade500,
                    ),
                  ),
            const SizedBox(
              width: 8,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.name,
                    style: const TextStyle(
                      fontSize: 17,
                    ),
                  ),
                  const Text(
                    'online',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.videocam_rounded,
              color: Colors.white,
              size: 28,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.phone,
              color: Colors.white,
              size: 28,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              CupertinoIcons.ellipsis_vertical,
              color: Colors.white,
              size: 25,
            ),
          ),
        ],
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.symmetric(vertical: 5),
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/chat bg new.jpg'),
                fit: BoxFit.cover)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return MessageBubble(
                    message: data.chatMessages.values
                        .elementAt(index)
                        .elementAt(0) as String,
                    isMe: data.chatMessages.values.elementAt(index).elementAt(1)
                        as bool,
                  );
                },
                itemCount: data.chatMessages.length,
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(
                        left: 8.0, top: 8.0, bottom: 8.0, right: 6.0),
                    width: MediaQuery.of(context).size.width * 0.84,
                    height: MediaQuery.of(context).size.width * 0.1,
                    padding: const EdgeInsets.only(right: 10, left: 5),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.emoji_emotions_outlined,
                          color: Colors.grey.shade500,
                          size: 30,
                        ),
                        const SizedBox(
                          width: 6,
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 3.0),
                          width: MediaQuery.of(context).size.width * 0.55,
                          height: MediaQuery.of(context).size.width * 0.1,
                          child: TextField(
                            controller: textEditingController,
                            cursorColor: Colors.teal,
                            style: const TextStyle(fontSize: 20),
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Type a Message...',
                              hintStyle: TextStyle(
                                color: Colors.grey.shade400,
                                fontSize: 19,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Icon(
                            CupertinoIcons.paperclip,
                            color: Colors.grey.shade500,
                            size: 27,
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        textEditingController.text.trim() == ""
                            ? Expanded(
                                child: Icon(
                                  Icons.camera_alt_rounded,
                                  color: Colors.grey.shade500,
                                  size: 27,
                                ),
                              )
                            : Container(),
                      ],
                    ),
                  ),
                ),
                CircleAvatar(
                  backgroundColor: const Color(0xff00897b),
                  radius: 25,
                  child: textEditingController.text.trim() == ""
                      ? const Icon(
                          Icons.mic,
                          color: Colors.white,
                        )
                      : IconButton(
                          onPressed: () {
                            data.chatMessages[data.chatMessages.length] = [
                              textEditingController.text,
                              true
                            ];
                            textEditingController.clear();
                            setState(() {});
                          },
                          icon: const Icon(
                            Icons.send_rounded,
                            color: Colors.white,
                          )),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    textEditingController.dispose();
    super.dispose();
  }
}
