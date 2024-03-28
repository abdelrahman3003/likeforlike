import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;

class LocalizationService {
  // Map to hold the translated strings
  late Map<String, dynamic> _localizedStrings;

  // Load the language-specific JSON file and populate the map
  Future<bool> loadLocalizedStrings(String languageCode) async {
    try {
      // Load JSON file from assets folder
      String jsonString =
          await rootBundle.loadString('assets/json/$languageCode.json');

      // Parse JSON string
      Map<String, dynamic> jsonMap = json.decode(jsonString);

      // Store parsed JSON map in _localizedStrings
      _localizedStrings = jsonMap;
      return true;
    } catch (e) {
      print('Error loading localized strings: $e');
      return false;
    }
  }

  // Method to get a translated string by its key
  String? getTranslatedString(String key) {
    return _localizedStrings[key];
  }
}
  
  // Example usage:
  // In your widget's initState or somewhere appropriate, load the localized strings like this:
  // LocalizationService localizationService = LocalizationService();
  // await localizationService.loadLocalizedStrings('en');
  
  // Then, wherever you need to display a translated string, call getTranslatedString() like this:
  // String translatedString = localizationService.getTranslatedString('hello');