import 'package:flutter/material.dart';
import 'profilepagewidgets.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          ProfileSpace(),
          SizedBox(
            height: 40.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              children: [
                bioInfo(context),
                SizedBox(
                  height: 20.0,
                ),
                infoContainer(context),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ProfileSpace extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300.0,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Colors.cyan,
            Colors.blue,
          ],
          stops: [
            0.15,
            0.75,
          ],
        ),
      ),
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.center,
        children: [
          Positioned(
            top: 30.0,
            child: profileBar(context),
          ),
          displayNdInfo(context),
          Positioned(
            bottom: -30.0,
            child: toolBar(context),
          ),
        ],
      ),
    );
  }
}
