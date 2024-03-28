import 'package:flutter/material.dart';
import 'package:project2/shared/componance.dart';

import 'madules/supmitpage.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Stack(
        children: <Widget>[
          Column(
            children: [
              Image.asset(
                'assets/images/spash.jpg',
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'المهمات',
                      style: TextStyle(
                          color: defultelogocolor2,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Image.asset(
                      'assets/images/card1.jpg',
                    ),
                    ListTile(
                      title:
                          Text('هذه بطاقة نموذجية تحتوي على صورة ونص وأزرار.'),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        // Perform action when button 1 is pressed.
                      },
                      child: Text('تنفيذ'),
                    ),
                    SizedBox(
                      height: 13,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => submit()),
                          );
                        },
                        child: Text('تأكيد'),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              defultelogocolor2),
                        )),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    SizedBox(
                      height: 300,
                      child: Image.asset(
                        'assets/images/card2.jpg',
                      ),
                    ),
                    ListTile(
                      title:
                          Text('هذه بطاقة نموذجية تحتوي على صورة ونص وأزرار'),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        // Perform action when button 1 is pressed.
                      },
                      child: Text('تنفيذ'),
                    ),
                    SizedBox(
                      height: 13,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => submit()),
                          );
                        },
                        child: Text('تأكيد'),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              defultelogocolor2),
                        )),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Image.asset(
                      'assets/images/card3.jpg',
                    ),
                    ListTile(
                      title:
                          Text('هذه بطاقة نموذجية تحتوي على صورة ونص وأزرار'),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        // Perform action when button 1 is pressed.
                      },
                      child: Text('تنفيذ'),
                    ),
                    SizedBox(
                      height: 13,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => submit()),
                          );
                        },
                        child: Text('تأكيد'),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              defultelogocolor2),
                        )),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Image.asset(
                      'assets/images/card4.jpg',
                    ),
                    ListTile(
                      title:
                          Text('هذه بطاقة نموذجية تحتوي على صورة ونص وأزرار.'),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        // Perform action when button 1 is pressed.
                      },
                      child: Text('تنفيذ'),
                    ),
                    SizedBox(
                      height: 13,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => submit()),
                          );
                        },
                        child: Text('تأكيد'),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              defultelogocolor2),
                        )),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
