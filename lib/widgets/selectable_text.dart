import 'package:flutter/material.dart';

class SelectableText extends StatelessWidget {
  final String text;
  final TextStyle textStyle;

  const SelectableText({
    Key? key,
    required this.text,
    required this.textStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SelectableText(text: text, textStyle: textStyle);
  }
}
