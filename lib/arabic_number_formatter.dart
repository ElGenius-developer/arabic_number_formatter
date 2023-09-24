library arabic_number_formatter;

 import 'package:flutter/material.dart';

import 'dart:developer';

import 'package:flutter/services.dart';
part 'src/convert_number_to_arabic.dart';
part 'src/numbers_map.dart';

part 'src/language_enum.dart';
part 'zero_remove_formatter.dart';
part 'arabic_english_digits_input_formatter.dart';

class ArabicNumberTextInputFormatter extends TextInputFormatter {
  final bool isArabic;

  ArabicNumberTextInputFormatter({required this.isArabic});

  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    String newText = newValue.text;

    newText = convertNumbers(newText, isArabic: isArabic);

    return TextEditingValue(
      text: newText,
      selection: newValue.selection,
    );
  }
}
