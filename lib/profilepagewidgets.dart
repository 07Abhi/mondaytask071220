import 'package:flutter/material.dart';

Widget profileBar(BuildContext context) {
  return Container(
    height: 30.0,
    width: MediaQuery.of(context).size.width,
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            Icons.keyboard_backspace,
            size: 25.0,
            color: Colors.white,
          ),
          Text(
            "ESBO USER since April 2017",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
          ),
          Icon(
            Icons.favorite_border,
            size: 25.0,
            color: Colors.white,
          ),
        ],
      ),
    ),
  );
}

Widget toolBar(BuildContext context) {
  return Container(
    height: 60.0,
    width: 350.0,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(30.0),
    ),
    child: Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              Icons.chat,
              size: 25.0,
              color: Colors.cyan,
            ),
            Icon(
              Icons.phone,
              size: 25.0,
              color: Colors.pink.shade400,
            ),
            Icon(
              Icons.videocam_outlined,
              size: 25.0,
              color: Colors.green.shade400,
            ),
          ],
        ),
      ),
    ),
  );
}

Widget displayNdInfo(BuildContext context) {
  return Container(
    height: 150.0,
    width: MediaQuery.of(context).size.width,
    child: Row(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: CircleAvatar(
            radius: 65.0,
            backgroundColor: Theme.of(context).primaryColor,
            child: CircleAvatar(
              radius: 60.0,
              backgroundImage: NetworkImage(
                  'https://i.insider.com/5c38f5e6bd773011f22991b8?width=2400'),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hillary Brown',
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                'Cardiology, Senior Resident',
                style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.white70,
                  fontWeight: FontWeight.w500,
                ),
              )
            ],
          ),
        )
      ],
    ),
  );
}

Widget bioInfo(BuildContext context) {
  return Container(
    height: 120.0,
    width: MediaQuery.of(context).size.width,
    decoration: BoxDecoration(
      color: Colors.white,
    ),
    child: Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 5.0,
        vertical: 5.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "BIO",
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.w500,
              color: Colors.black87,
            ),
          ),
          SizedBox(
            height: 5.0,
          ),
          Text(
            'Lorem Ipsum sir amet, consector adipiscing elit.sed do eiusmod tempor incididunt ut dalore magna aliqua Ut enim ad minim veniam, quis nosturd exercitation ullama lobris.',
            style: TextStyle(
              color: Colors.black54,
              letterSpacing: 1.0,
            ),
          )
        ],
      ),
    ),
  );
}

Widget infoContainer(BuildContext context) {
  return Container(
    height: 120.0,
    width: MediaQuery.of(context).size.width,
    decoration: BoxDecoration(
      color: Colors.white,
    ),
    child: Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 5.0,
        vertical: 5.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "PRIAVATE INFO",
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.w500,
              color: Colors.black87,
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.mail_outline,
              color: Theme.of(context).primaryColor,
              size: 20.0,
            ),
            title: Text(
              "hillary.brown@gmai.com",
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w500,
              ),
            ),
          )
        ],
      ),
    ),
  );
}
