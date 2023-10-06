import 'package:flutter/material.dart';

class MessageBubble extends StatelessWidget {
  final String message;
  final bool isMe;

  const MessageBubble({super.key, required this.message, required this.isMe});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment:
              isMe ? MainAxisAlignment.end : MainAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 8),
              constraints: BoxConstraints(
                  minWidth: 0,
                  maxWidth: MediaQuery.of(context).size.width * 0.7),
              padding: EdgeInsets.symmetric(horizontal: 5, vertical: 3),
              decoration: BoxDecoration(
                  color: isMe ? Color(0xffccfbc6) : Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Text(
                message,
                softWrap: true,
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 8,
        )
      ],
    );
  }
}
