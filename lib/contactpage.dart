import 'package:flutter/material.dart';
import 'contactswidgets.dart';

class Contacts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).accentColor,
        title: Text(
          "Contacts",
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.black,
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: true,
        leading: Icon(
          Icons.keyboard_backspace,
          size: 30.0,
          color: Colors.black,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Icon(
              Icons.favorite_border_outlined,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: ListView(
        children: [
          chipsBar(context),
          SizedBox(
            height: 5.0,
          ),
          textLabel(context),
          SizedBox(
            height: 5.0,
          ),
          personCard(
            context,
            doctorName: "Akil Baker",
            speaciality: "Genral Surgery Consultant",
            isTrue: true,
          ),
          SizedBox(
            height: 5.0,
          ),
          personCard(
            context,
            doctorName: "David Chung",
            speaciality: "Radiology chief Resident",
            isTrue: true,
            isOnline: true,
          ),
          SizedBox(
            height: 5.0,
          ),
          personCard(
            context,
            doctorName: "Gavin Turner",
            speaciality: "Cardiology Senior Resident",
            isTrue: false,
            isOnline: true,
          ),
          SizedBox(
            height: 5.0,
          ),
          personCard(
            context,
            doctorName: "Hillary Brown",
            speaciality: "Nuerology Surgoen",
            isTrue: true,
          ),
          SizedBox(
            height: 5.0,
          ),
          personCard(context,
              doctorName: "Nayak Sarkar",
              speaciality: "General Medicine",
              isTrue: false,
              isOnline: true),
          SizedBox(
            height: 5.0,
          ),
          personCard(
            context,
            doctorName: "Curt gayle",
            speaciality: "Genraal Surgery Consultant",
            isTrue: true,
          ),
        ],
      ),
    );
  }
}
