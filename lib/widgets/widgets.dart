import 'package:flutter/material.dart';

Widget appBar(BuildContext context) {
  return RichText(
    text: TextSpan(
      style: TextStyle(fontSize: 24),
      children: const <TextSpan>[
        TextSpan(
            text: 'Quiz',
            style:
                TextStyle(fontWeight: FontWeight.w600, color: Colors.black54)),
        TextSpan(
            text: 'App',
            style: TextStyle(fontWeight: FontWeight.w900, color: Colors.red)),
      ],
    ),
  );
}

Widget blueButton({BuildContext context, String label, buttonWidth}) {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 16),
    decoration: BoxDecoration(
        color: Colors.blue, borderRadius: BorderRadius.circular(30)),
    alignment: Alignment.center,
    width: buttonWidth != null ? buttonWidth : MediaQuery.of(context).size.width - 56,
    child: Text(
      label,
      style: TextStyle(color: Colors.white, fontSize: 24),
    ),
  );
}
