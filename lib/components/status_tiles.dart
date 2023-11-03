import 'package:flutter/material.dart';
import 'package:whatsapp_ui/components/divider.dart';
import 'package:whatsapp_ui/whatsapp_data.dart';
import 'package:dotted_border/dotted_border.dart';
import 'dart:math';

Data data = Data();

class StatusTile extends StatelessWidget {
  const StatusTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
          itemBuilder: (context, index) {
            return ListTile(
              leading: DottedBorder(
                color: Colors.teal.shade300,
                borderType: BorderType.Circle,
                radius: const Radius.circular(27),
                dashPattern: [
                  (2 * pi * 27) /
                      (data.statusList.values.elementAt(index).elementAt(2)
                          as num),
                  data.statusList.values.elementAt(index).elementAt(3)
                      as double,
                ],
                strokeWidth: 3,
                child: CircleAvatar(
                  radius: 27,
                  backgroundColor: Colors.transparent,
                  child: CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage(
                      data.statusList.values.elementAt(index).elementAt(1)
                          as String,
                    ),
                  ),
                ),
              ),
              title: Text(
                '${data.statusList.values.elementAt(index).elementAt(0)}',
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                ),
              ),
              subtitle: Text(
                '${data.statusList.values.elementAt(index).elementAt(4)}',
                style: const TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                ),
              ),
            );
          },
          separatorBuilder: (context, index) {
            return data.statusList.values.elementAt(index).elementAt(5) as bool
                ? const SizedBox(
                    height: 20,
                  )
                : const Seperator();
          },
          itemCount: data.statusList.length),
    );
  }
}
