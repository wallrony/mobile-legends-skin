import 'package:flutter/material.dart';
import 'package:mobile_legends_skins/widgets/base_text.dart';

class BaseAppBar extends StatelessWidget {
  final String title;

  BaseAppBar({
    @required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 24, right: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back_ios,
              size: 36,
            ),
          ),
          BaseText(
            text: this.title,
            color: Colors.black,
            fontSize: 36,
            isBold: true,
          ),
        ],
      ),
    );
  }
}
