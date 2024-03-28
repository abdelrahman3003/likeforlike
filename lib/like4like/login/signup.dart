import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../shared/componance.dart';
import '../paymentpages/paymentmethod.dart';
import 'login.dart';

class signuppage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(left: 100),
          child: logo,
        ),
        elevation: 0.0,
        backgroundColor: Colors.white,
        actions: [
          IconButton(
              icon: Icon(Icons.arrow_right),
              onPressed: () {
                Navigator.pop(context);
              },
              color: defultelogocolor2),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: ElevatedButton.icon(
                onPressed: () {},
                icon: FaIcon(FontAwesomeIcons.google, color: Colors.white),
                label: Text('اكمال بحساب جوحل',
                    style: TextStyle(color: Colors.white)),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      defultelogocolor2), // Change the color to your preference
                ),
              ),
            ),
            Text(
              'او',
              style: TextStyle(fontSize: 20, color: Colors.grey),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: EmailInput(),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 26),
              child: PasswordTextField(),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 26),
              child: cPasswordTextField(),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: PhoneNumberInputWidget(),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: SizedBox(
                width: 170,
                height: 47,
                child: ElevatedButton(
                    onPressed: () {
                      {
                        // تنفيذ عند الضغط على الزر
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => paymentmethod()));
                      }
                      ;
                    },
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            defultelogocolor2)),
                    child: Text('تسجيل')),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "لدي حساب بالفعل",
                      style: TextStyle(color: Colors.black),
                    ),
                    TextSpan(
                      text: 'تسجيل الدخول',
                      style: TextStyle(color: Colors.red),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          // التنقل إلى صفحة الاشتراك عند النقر
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => loginpage()),
                          );
                        },
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
