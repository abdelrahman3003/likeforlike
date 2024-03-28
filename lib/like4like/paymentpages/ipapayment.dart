import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../shared/componance.dart';
import '../box.dart';
import '../madules/supmitpage.dart';

class ipapayment extends StatelessWidget {
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
      body: Column(children: [
        SizedBox(
          height: 30,
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'تأكيد الدفع',
                style: TextStyle(
                    color: defultelogocolor2,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('لوريم إيبسوم، أو ليبسوم كما يعرف أحياناً'),
        ),
        SizedBox(height: 40),
        Padding(
          padding: const EdgeInsets.all(20),
          child: LinkInput(),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: submit(),
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
      ]),
    );
  }
}
