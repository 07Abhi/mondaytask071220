import 'package:flutter/material.dart';

Widget boxes() {
  return Container(
    height: 40.0,
    width: 40.0,
    decoration: BoxDecoration(
      border: Border.all(
        color: Colors.grey.shade400,
        width: 1.5,
      ),
    ),
    child: TextField(
      style: TextStyle(
        color: Colors.black87,
        fontSize: 16.0,
        fontWeight: FontWeight.w600,
      ),
      maxLines: 1,
      maxLengthEnforced: false,
      textInputAction: TextInputAction.next,
      showCursor: false,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
      ),
    ),
  );
}
