import 'dart:async';
import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;

class LocalizationService {
  Map<String, String>? _localizedStrings;

  Future<bool> loadLocalizedStrings(String languageCode) async {
    String jsonString =
        await rootBundle.loadString('assets/json/$languageCode.json');
    Map<String, dynamic> jsonMap = json.decode(jsonString);
    _localizedStrings =
        jsonMap.map((key, value) => MapEntry(key, value.toString()));
    return true;
  }

  String? getLocalizedString(String key) {
    return _localizedStrings?[key];
  }
}
