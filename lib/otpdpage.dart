import 'package:flutter/material.dart';
import 'otpagewidget.dart';

class OTPpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        shadowColor: Colors.white,
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.keyboard_backspace,
          size: 30.0,
          color: Colors.black,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Verify OTP",
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.w900,
                color: Theme.of(context).primaryColor,
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Text(
              "Please enter 6-digit OTP that has been sent to +809-xxxx xxxx 321",
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w600,
                color: Colors.grey.shade500,
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      boxes(),
                      SizedBox(
                        width: 3.0,
                      ),
                      boxes(),
                      SizedBox(
                        width: 3.0,
                      ),
                      boxes(),
                      SizedBox(
                        width: 3.0,
                      ),
                      boxes(),
                      SizedBox(
                        width: 3.0,
                      ),
                      boxes(),
                      SizedBox(
                        width: 3.0,
                      ),
                      boxes(),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20.0),
                    child: Text(
                      "00.00",
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.grey.shade500,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 20.0),
                    child: Text(
                      "Resend OTP",
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Container(
                    height: 80.0,
                    width: 300.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40.0),
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
                    child: Center(
                      child: Text(
                        "SUBMIT",
                        style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
