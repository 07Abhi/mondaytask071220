import 'package:flutter/material.dart';

Widget leadingTile() {
  return Container(
    width: 60.0,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10.0),
      color: Colors.indigo.shade700,
    ),
    child: Center(
      child: Icon(
        Icons.delete,
        size: 30.0,
        color: Colors.white,
      ),
    ),
  );
}
