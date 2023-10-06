import 'package:flutter/material.dart';

class Seperator extends StatelessWidget {
  const Seperator({super.key});

  @override
  Widget build(BuildContext context) {
    return Divider(
      thickness: 0.75,
      endIndent: 10,
      indent: 60,
    );
  }
}
