import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

const defultelogocolor1 = Color.fromARGB(255, 56, 0, 214);
const defultelogocolor2 = Colors.red;
var logo = RichText(
  text: TextSpan(
    style: TextStyle(
        fontSize: 24.0, color: defultelogocolor1, fontWeight: FontWeight.bold),
    children: <TextSpan>[
      TextSpan(text: 'like'),
      TextSpan(
        text: '4like',
        style: TextStyle(color: Colors.red),
      ),
    ],
  ),
);
var loginbottum = SizedBox(
  width: 90,
  height: 50,
  child: Padding(
    padding: const EdgeInsets.all(8.0),
    child: ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(),
      child: Text(
        'تسجيل الدخول ',
        style: TextStyle(fontSize: 11),
      ),
    ),
  ),
);
var P_profile = Padding(
  padding: const EdgeInsets.only(right: 16.0),
  child: CircleAvatar(
    backgroundImage: AssetImage('assets/images/p_profile.jpg'),
  ),
);

class PhoneNumberInputWidget extends StatefulWidget {
  @override
  _PhoneNumberInputWidgetState createState() => _PhoneNumberInputWidgetState();
}

class _PhoneNumberInputWidgetState extends State<PhoneNumberInputWidget> {
  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _controller,
      keyboardType: TextInputType.phone,
      decoration: InputDecoration(
        labelText: 'أدخل رقم الهاتف',
        border: OutlineInputBorder(),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}

class pagecontent extends StatefulWidget {
  @override
  _pagecontentState createState() => _pagecontentState();
}

class _pagecontentState extends State<pagecontent> {
  List<File> _imageFiles = [];
  List<String> _fileNames = [];

  void _pickImages(BuildContext context) async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.image,
      allowMultiple: true,
    );
    if (result != null) {
      List<File> pickedFiles = result.paths.map((path) => File(path!)).toList();
      List<String?> fileNames = result.names;
      setState(() {
        _imageFiles.addAll(pickedFiles);
        _fileNames.addAll(fileNames as Iterable<String>);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 300,
                child: ElevatedButton(
                    onPressed: () => _pickImages(context),
                    child: Text('صورة العملية'),
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.white10),
                    )),
              ),
            ],
          ),
        ),
        SizedBox(height: 20),
        ListView.builder(
          shrinkWrap: true,
          itemCount: _fileNames.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: Image.file(
                _imageFiles[index],
                width: 50,
                height: 50,
                fit: BoxFit.cover,
              ),
              title: Text(_fileNames[index]),
            );
          },
        ),
      ],
    );
  }
}

// class ImageSelectionBox extends StatefulWidget {
//   @override
//   _ImageSelectionBoxState createState() => _ImageSelectionBoxState();
// }

// class _ImageSelectionBoxState extends State<ImageSelectionBox> {
//   File? _image;

//   Future<void> _pickImage() async {
//     final pickedFile =
//         await ImagePicker().getImage(source: ImageSource.gallery);

//     if (pickedFile != null) {
//       setState(() {
//         _image = File(pickedFile.path);
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           ElevatedButton(
//             onPressed: _pickImage,
//             child: Text('اختر صورة'),
//           ),
//           SizedBox(height: 20),
//           Container(
//             width: 200,
//             height: 200,
//             decoration: BoxDecoration(
//               border: Border.all(color: Colors.black),
//             ),
//             child: _image != null
//                 ? Image.file(
//                     _image!,
//                     width: 200,
//                     height: 200,
//                     fit: BoxFit.cover,
//                   )
//                 : Center(child: Text('لا توجد صورة محددة')),
//           ),
//         ],
//       ),
//     );
//   }
// }

class amountInput extends StatefulWidget {
  @override
  _amountInputState createState() => _amountInputState();
}

class _amountInputState extends State<amountInput> {
  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: TextField(
        controller: _controller,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          labelText: 'أدخل المبلغ',
          border: OutlineInputBorder(),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}

class EmailInput extends StatefulWidget {
  @override
  _EmailInputState createState() => _EmailInputState();
}

class _EmailInputState extends State<EmailInput> {
  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: TextField(
        controller: _controller,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
            labelText: 'بريد إلكتروني',
            border: OutlineInputBorder(),
            hoverColor: defultelogocolor2),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}

class PasswordTextField extends StatefulWidget {
  @override
  _PasswordTextFieldState createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: TextField(
        obscureText: _obscureText,
        decoration: InputDecoration(
          labelText: 'كلمة المرور',
          suffixIcon: IconButton(
            icon: Icon(_obscureText ? Icons.visibility : Icons.visibility_off),
            onPressed: () {
              setState(() {
                _obscureText = !_obscureText;
              });
            },
          ),
          border: OutlineInputBorder(),
        ),
      ),
    );
  }
}

class cPasswordTextField extends StatefulWidget {
  @override
  _cPasswordTextFieldState createState() => _cPasswordTextFieldState();
}

class _cPasswordTextFieldState extends State<cPasswordTextField> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: TextField(
        obscureText: _obscureText,
        decoration: InputDecoration(
          labelText: 'تأكيد كلمة المرور',
          suffixIcon: IconButton(
            icon: Icon(_obscureText ? Icons.visibility : Icons.visibility_off),
            onPressed: () {
              setState(() {
                _obscureText = !_obscureText;
              });
            },
          ),
          border: OutlineInputBorder(),
        ),
      ),
    );
  }
}

class cardInput extends StatefulWidget {
  @override
  _cardInputState createState() => _cardInputState();
}

class _cardInputState extends State<cardInput> {
  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: TextField(
        controller: _controller,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
            labelText: 'الاسم على البطاقة',
            border: OutlineInputBorder(),
            hoverColor: defultelogocolor2),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}

class CARDNUMBERInput extends StatefulWidget {
  @override
  _CARDNUMBERInputState createState() => _CARDNUMBERInputState();
}

class _CARDNUMBERInputState extends State<CARDNUMBERInput> {
  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: TextField(
        controller: _controller,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
            labelText: 'رقم البطاقة',
            border: OutlineInputBorder(),
            hoverColor: defultelogocolor2),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}

class ExpDateTextField extends StatefulWidget {
  @override
  _ExpDateTextFieldState createState() => _ExpDateTextFieldState();
}

class _ExpDateTextFieldState extends State<ExpDateTextField> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _controller,
      keyboardType: TextInputType.number,
      inputFormatters: [MaskedTextInputFormatter(mask: '٠٠/٠٠')],
      decoration: InputDecoration(
        labelText: 'تاريخ انتهاء الصلاحية',
        hintText: 'مم / سنة',
        prefixIcon: Icon(Icons.calendar_today),
        border: OutlineInputBorder(),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}

class MaskedTextInputFormatter extends TextInputFormatter {
  final String mask;

  MaskedTextInputFormatter({required this.mask});

  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    String maskedText = '';
    int index = 0;
    for (int i = 0; i < mask.length; i++) {
      if (index >= newValue.text.length) {
        break;
      }
      if (mask[i] == '0') {
        maskedText += newValue.text[index];
        index++;
      } else {
        maskedText += mask[i];
      }
    }
    return TextEditingValue(
      text: maskedText,
      selection: TextSelection.collapsed(offset: maskedText.length),
    );
  }
}

class LinkInput extends StatefulWidget {
  @override
  _LinkInputState createState() => _LinkInputState();
}

class _LinkInputState extends State<LinkInput> {
  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: TextField(
        controller: _controller,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
            labelText: 'رابط انستا باي',
            border: OutlineInputBorder(),
            hoverColor: defultelogocolor2),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
