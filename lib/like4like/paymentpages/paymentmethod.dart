import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../shared/componance.dart';
import 'Bpayment.dart';
import 'Vodafonecash.dart';
import 'ipapayment.dart';

class paymentmethod extends StatefulWidget {
  @override
  State<paymentmethod> createState() => _paymentmethodState();
}

class _paymentmethodState extends State<paymentmethod> {
  String _selectedItem = 'فودافون كاش';
  void _navigateToPage(BuildContext context) {
    if (_selectedItem == 'فودافون كاش') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => VodafoneCashpayment()),
      );
    } else if (_selectedItem == ' انستا باي') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ipapayment()),
      );
    } else if (_selectedItem == 'التحويل المصرفي') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Bankpayment()),
      );
    }
  }

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
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'طريقة الدفع',
                  style: TextStyle(
                      color: defultelogocolor2,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Center(
            child: Column(children: [
              SizedBox(
                width: 300,
                height: 30,
                child: DropdownButton<String>(
                  isExpanded: true,
                  isDense: true,
                  value: _selectedItem,
                  onChanged: (String? newValue) {
                    setState(() {
                      _selectedItem = newValue!;
                    });
                  },
                  items: <String>[
                    'فودافون كاش',
                    ' انستا باي',
                    'التحويل المصرفي'
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ),
              SizedBox(
                height: 80,
              ),
              SizedBox(
                width: 100,
                height: 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        _navigateToPage(context);
                      },
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              defultelogocolor2)),
                      child: Text('متابعة'),
                    ),
                  ],
                ),
              ),
            ]),
          )
        ]));
  }
}
