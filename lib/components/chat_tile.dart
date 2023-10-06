import 'package:flutter/material.dart';
import 'package:whatsapp_ui/screens/chat_room_screen.dart';

class ChatTile extends StatelessWidget {
  final String name;
  final String? image;
  final String message;
  final String time;
  const ChatTile(
      {super.key,
      required this.name,
      required this.image,
      required this.message,
      required this.time});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context)=> ChatRoomScreen(name: name, image: image)),),
      leading: image != null
          ? Padding(
              padding: EdgeInsets.only(right: 8.0),
              child: CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage(image!),
              ),
            )
          : Padding(
              padding: EdgeInsets.only(right: 8.0),
              child: Icon(
                Icons.account_circle,
                size: 55,
                color: Colors.grey.shade500,
              ),
            ),
      minVerticalPadding: 0,
      horizontalTitleGap: 5,
      trailing: Padding(
        padding: EdgeInsets.all(8.0),
        child: Text(
          time,
          style: TextStyle(color: Colors.grey.shade500),
        ),
      ),
      title: Text(
        name,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
          fontSize: 19,
        ),
      ),
      subtitle: Padding(
        padding: const EdgeInsets.only(top: 7),
        child: Text(
          message,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(fontSize: 15, color: Colors.grey.shade500),
        ),
      ),

    );
  }
}
