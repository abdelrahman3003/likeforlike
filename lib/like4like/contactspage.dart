import 'package:flutter/material.dart';

import '../shared/componance.dart';

class Contacts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Image.asset(
                'assets/images/followus.jpg',
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: GestureDetector(
                      onTap: () {
                        // افعل شيئا عند الضغط على أيقونة الفيسبوك
                      },
                      child: ClipOval(
                        child: Image.asset('assets/images/fb.jpg',
                            width: 60, height: 60),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: GestureDetector(
                      onTap: () {
                        // افعل شيئا عند الضغط على أيقونة تويتر
                      },
                      child: ClipOval(
                        child: Image.asset('assets/images/tr.jpg',
                            width: 50, height: 50),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: GestureDetector(
                      onTap: () {
                        // افعل شيئا عند الضغط على أيقونة لينكدإن
                      },
                      child: ClipOval(
                        child: Image.asset('assets/images/Ln.jpg',
                            width: 40, height: 40),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        // افعل شيئا عند الضغط على أيقونة لينكدإن
                      },
                      child: ClipOval(
                        child: Image.asset('assets/images/im.jpg',
                            width: 50, height: 50),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(14),
                  child: Text(
                    '  جهات الاتصال',
                    style: TextStyle(
                        color: defultelogocolor2,
                        fontSize: 30,
                        fontWeight: FontWeight.normal),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    '       العنوان: 4-5 الطريق الرئيسي  ',
                    style: TextStyle(
                        fontWeight: FontWeight.w300, color: Colors.grey[700]),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    '       DelhiEmail : educare@gmail.com',
                    style: TextStyle(
                        fontWeight: FontWeight.w300, color: Colors.grey[700]),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    '       رقم الهاتف : +91 4533433265',
                    style: TextStyle(
                        fontWeight: FontWeight.w300, color: Colors.grey[700]),
                  ),
                ],
              ),
            )
          ],
        ),
      ],
    );
  }
}
