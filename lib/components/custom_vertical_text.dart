import 'package:flutter/material.dart';

class CustomVerticalText extends StatelessWidget {
  final String headText;
  final String text;
  final TextStyle headTextStyle;
  final TextStyle textStyle;
  const CustomVerticalText( {
    super.key, required this.headText, required this.textStyle, required this.text, required this.headTextStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(headText,
  
          style: headTextStyle,
        ),
        Text(text,
  
          style: textStyle,
        ),
      ],
    );
  }
}