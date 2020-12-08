import 'dart:ffi';

import 'package:flutter/material.dart';

Widget chips(BuildContext context, bool isActive, String title) {
  return Container(
    height: 40.0,
    width: 100.0,
    decoration: BoxDecoration(
      border: Border.all(color: Colors.grey.shade400),
      borderRadius: BorderRadius.circular(20.0),
      gradient: isActive
          ? LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Colors.cyan,
                Colors.blue,
              ],
            )
          : null,
    ),
    child: Center(
      child: Text(
        title,
        style: TextStyle(
          color: isActive ? Colors.white : Colors.grey.shade500,
          fontSize: 16.0,
          fontWeight: FontWeight.w600,
        ),
      ),
    ),
  );
}

Widget chipsBar(BuildContext context) {
  return Container(
    height: 50.0,
    width: MediaQuery.of(context).size.width,
    color: Colors.white,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        chips(context, false, "Doctors"),
        chips(context, false, "Nurses"),
        chips(context, true, "AHP's"),
      ],
    ),
  );
}

Widget textLabel(BuildContext context) {
  return Container(
    height: 40.0,
    width: MediaQuery.of(context).size.width,
    color: Colors.white,
    child: Text(
      "Allied Health Professional",
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Colors.grey.shade500,
        fontSize: 14.0,
      ),
    ),
  );
}

Widget personCard(
  BuildContext context, {
  String doctorName,
  String speaciality,
  bool isTrue,
  bool isOnline = false,
}) {
  return Container(
    height: 120.0,
    width: MediaQuery.of(context).size.width,
    color: Colors.white,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CircleAvatar(
                    radius: 30.0,
                    backgroundImage: AssetImage('assets/profilebadge.png'),
                  ),
                  Positioned(
                    right: 1.0,
                    top: 2.0,
                    child: CircleAvatar(
                      radius: 7.0,
                      backgroundColor: isOnline ? Colors.green : Colors.red,
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    doctorName,
                    style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500,
                        color: Colors.black87),
                  ),
                  Text(
                    speaciality,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey.shade500,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50.0),
              child: IconButton(
                icon: isTrue
                    ? Icon(
                        Icons.favorite,
                        size: 30.0,
                        color: Colors.red,
                      )
                    : Icon(
                        Icons.favorite_outline,
                        size: 30.0,
                        color: Colors.grey.shade500,
                      ),
                onPressed: () {},
              ),
            )
          ],
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(
                Icons.chat,
                size: 25.0,
                color: Colors.cyan.shade200,
              ),
              Icon(
                Icons.phone,
                size: 25.0,
                color: Colors.pink.shade200,
              ),
              Icon(
                Icons.videocam_outlined,
                size: 25.0,
                color: Colors.green.shade200,
              ),
            ],
          ),
        )
      ],
    ),
  );
}
