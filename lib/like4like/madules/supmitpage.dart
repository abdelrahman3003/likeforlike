import 'package:flutter/material.dart';

import '../../shared/componance.dart';
import '../box.dart';

class submit extends StatefulWidget {
  @override
  State<submit> createState() => _submitState();
}

class _submitState extends State<submit> {
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
      body: Column(
        children: [
          Image.asset(
            'assets/images/spash.jpg',
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: PhoneNumberInputWidget(),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: pagecontent(),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 100,
                  height: 47,
                  child: ElevatedButton(
                      onPressed: () {
                        {
                          // تنفيذ عند الضغط على الزر
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => box()));
                        }
                        ;
                      },
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              defultelogocolor2)),
                      child: Text('تسجيل')),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
