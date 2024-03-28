import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../shared/componance.dart';
import '../box.dart';

class Bankpayment extends StatelessWidget {
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
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset(
                  'assets/images/bankpayment.jpg',
                  width: 80,
                  height: 80,
                ),
              ],
            ),
          ),
          cardInput(),
          CARDNUMBERInput(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 80),
            child: ExpDateTextField(),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 90),
            child: Center(
              child: TextField(
                maxLength: 3, // تحديد الطول الأقصى للرقم CVV
                keyboardType: TextInputType.number, // تحديد نوع لوحة المفاتيح
                obscureText: true, // جعل النص غير مرئي
                decoration: InputDecoration(
                  labelText: 'CVV',
                  hintText: 'أدخل CVV الخاص بك',
                ),
              ),
            ),
          ),
          SizedBox(height: 20), // مسافة بين الحقول
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => box()));
            },
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(defultelogocolor2)),
            child: Text('تسجيل'),
          ),
        ]));
  }
}
