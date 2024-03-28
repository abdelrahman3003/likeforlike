import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

import '../../shared/componance.dart';

class profilepage extends StatefulWidget {
  @override
  State<profilepage> createState() => _profilepageState();
}

class _profilepageState extends State<profilepage> {
  TextEditingController _textEditingController = TextEditingController();
  TextEditingController _phoneEditingController = TextEditingController();
  TextEditingController _passwordEditingController = TextEditingController();
  TextEditingController _emailEditingController = TextEditingController();

  bool _isEditing = false;
  File? _profileImageFile;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              icon: Icon(Icons.arrow_right),
              onPressed: () {
                Navigator.pop(context);
              },
              color: defultelogocolor2),
        ],
        elevation: 0.0,
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          _profileImageFile != null
              ? CircleAvatar(
                  radius: 100,
                  backgroundImage: FileImage(_profileImageFile!),
                )
              : CircleAvatar(
                  radius: 100,
                  child: Icon(Icons.person),
                ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () async {
              FilePickerResult? result =
                  await FilePicker.platform.pickFiles(type: FileType.image);
              if (result != null) {
                setState(() {
                  _profileImageFile = File(result.files.single.path!);
                });
              }
            },
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.grey)),
            child: Text(' بتحديث الصورة'),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  icon: Icon(Icons.edit),
                  color: Colors.black,
                  onPressed: () {
                    setState(() {
                      _isEditing = true;
                    });
                  },
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                Text(
                  'ألاسم',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: defultelogocolor2),
                ),
                SizedBox(
                  width: 15,
                ),
                Expanded(
                  child: TextField(
                      controller: _textEditingController,
                      enabled: _isEditing,
                      style: TextStyle(color: Colors.grey)),
                ),
                if (_isEditing)
                  IconButton(
                    icon: Icon(Icons.check),
                    color: Colors.red,
                    onPressed: () {
                      setState(() {
                        _isEditing = false;
                      });
                    },
                  ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                Text(
                  'رقم التليفون',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: defultelogocolor2),
                ),
                SizedBox(
                  width: 15,
                ),
                Expanded(
                  child: TextField(
                      controller: _phoneEditingController,
                      enabled: _isEditing,
                      style: TextStyle(color: Colors.grey)),
                ),
                if (_isEditing)
                  IconButton(
                    icon: Icon(Icons.check),
                    color: Colors.red,
                    onPressed: () {
                      setState(() {
                        _isEditing = false;
                      });
                    },
                  ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                Text(
                  'بريد إلكتروني',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: defultelogocolor2),
                ),
                SizedBox(
                  width: 15,
                ),
                Expanded(
                    child: TextField(
                  controller: _emailEditingController,
                  enabled: _isEditing,
                  style: TextStyle(color: Colors.grey),
                )),
                if (_isEditing)
                  IconButton(
                    icon: Icon(Icons.check),
                    color: Colors.red,
                    onPressed: () {
                      setState(() {
                        _isEditing = false;
                      });
                    },
                  ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                Text(
                  'كلمة المرور',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: defultelogocolor2),
                ),
                SizedBox(
                  width: 15,
                ),
                Expanded(
                    child: TextField(
                  controller: _passwordEditingController,
                  enabled: _isEditing,
                  style: TextStyle(color: Colors.grey),
                )),
                if (_isEditing)
                  IconButton(
                    icon: Icon(Icons.check),
                    color: Colors.red,
                    onPressed: () {
                      setState(() {
                        _isEditing = false;
                      });
                    },
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
