import 'package:flutter/material.dart';
import 'package:product/Assignment/Dashboard_Screen/dashboard.dart';

import 'TextWidget.dart';

class OTPscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var heightScreen = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(title: const Text("OTP Screen")),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: heightScreen * .07,
            ),
            Image.asset('assets/otp.jpg'),
            const Text(
              'OTP VERIFICATION',
              style: TextStyle(
                fontSize: 28,
              ),
            ),
            SizedBox(
              height: heightScreen * .02,
            ),
            const Text(
              'Enter Verification Code Sent Your\nEmail Address',
              style: TextStyle(fontSize: 17, color: Colors.black38),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: heightScreen * .04,
            ),
            const TextWidget(),
            SizedBox(
              height: heightScreen * .03,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 22, left: 22),
              child: SizedBox(
                height: 62,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'VERIFY',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    backgroundColor: const Color(0xff985adb),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: heightScreen * .02,
            ),
            const Text(
              'Resent Code?',
              style: TextStyle(
                color: Color(0xff985adb),
                fontSize: 17,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.navigate_next,
          color: Colors.white,
        ),
        backgroundColor: const Color(0xff985adb),
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) {
                return Dashboard();
              },
            ),
          ).then((value) => null);
        },
      ),
    );
  }
}
