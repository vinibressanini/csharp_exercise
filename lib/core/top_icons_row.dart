import 'package:flutter/material.dart';
import 'package:simple_icons/simple_icons.dart';

class TopIconsRow extends StatelessWidget {
  const TopIconsRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: const [
        SizedBox(
          width: 50,
        ),
        Icon(
          SimpleIcons.linkedin,
          size: 55,
        ),
        Icon(
          SimpleIcons.facebook,
          size: 55,
        ),
        Icon(
          SimpleIcons.github,
          size: 55,
        ),
        SizedBox(
          width: 50,
        ),
      ],
    );
  }
}
