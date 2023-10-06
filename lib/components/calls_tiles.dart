import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CallTile extends StatelessWidget {
  final String name;
  final String image;
  final int videocall;
  final bool isMissed;
  final bool inComing;
  final String time;

  const CallTile(
      {super.key,
      required this.name,
      required this.image,
      required this.videocall,
      required this.isMissed,
      required this.inComing,
      required this.time});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: image != null
          ? CircleAvatar(radius: 25, backgroundImage: AssetImage(image))
          : Icon(
              Icons.account_circle,
              color: Colors.grey.shade500,
              size: 56,
            ),
      title: Text(
        name,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
          fontSize: 19,
        ),
      ),
      subtitle: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Icon(
              inComing
                  ? CupertinoIcons.arrow_down_left
                  : CupertinoIcons.arrow_up_right,
              color: isMissed ? Colors.red : Color(0xff25d366),
              size: 18,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Text(
              time,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 15,
                color: Colors.grey.shade500,
              ),
            ),
          ),
        ],
      ),
      trailing: Icon(
        videocall == 0 ? Icons.call: Icons.videocam_rounded,
        size: 23,
        color: Colors.teal,
      ),
    );
  }
}
