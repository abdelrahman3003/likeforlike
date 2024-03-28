import 'package:flutter/material.dart';

import '../../shared/componance.dart';
import 'f_splash.dart';
import 'login.dart';
import 'th_splash.dart';

class s_splashScrean extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/s_splash.jpg"),
                  fit: BoxFit.cover,
                ),
              )),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => loginpage()));
                  },
                  child: Text(
                    'تخطي',
                    style: TextStyle(
                        color: defultelogocolor2,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 60),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'like4like لتحقيق الأرباح',
                  style: TextStyle(
                      color: defultelogocolor2,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 16.0,
            right: 16.0,
            child: FloatingActionButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => th_splashScrean()));
              },
              backgroundColor: defultelogocolor2,
              child: Icon(Icons.arrow_back),
            ),
          ),
          Positioned(
            left: 70,
            bottom: 30,
            child: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => f_splashScrean()));
              },
              child: Container(
                width: 35,
                height: 12,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.0),
                  color: Color.fromRGBO(184, 72, 72, 1),
                ),
              ),
            ),
          ),
          Positioned(
            left: 120,
            bottom: 30,
            child: Container(
              width: 35,
              height: 12,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.0),
                color: defultelogocolor2,
              ),
            ),
          ),
          Positioned(
            left: 170,
            bottom: 30,
            child: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => th_splashScrean()));
              },
              child: Container(
                width: 35,
                height: 12,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.0),
                  color: Color.fromRGBO(184, 72, 72, 1),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
