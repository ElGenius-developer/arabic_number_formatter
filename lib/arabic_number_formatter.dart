library arabic_number_formatter;
import 'package:flutter/services.dart';
 part 'src/convert_number_to_arabic.dart';
 part 'src/numbers_map.dart';

 part 'src/language_enum.dart';



class ArabicNumberTextInputFormatter extends TextInputFormatter {
  final bool isArabic;

  ArabicNumberTextInputFormatter({required this.isArabic});

  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    String newText = newValue.text;

    newText = convertNumbers(
        newText,
        isArabic: isArabic
      );

    return TextEditingValue(
      text: newText,
      selection: newValue.selection,
    );
  }
}