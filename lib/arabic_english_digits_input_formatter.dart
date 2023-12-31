part of 'arabic_number_formatter.dart';

class ArabicEnglishOnlyDigitsInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    String filteredText = newValue.text;

    if (filteredText.isNotEmpty) {
      // Filter out non-Arabic and non-English digits
      filteredText =
          filteredText.replaceAll(RegExp(r'[^\u0660-\u06690-9]'), '');
    }

    return TextEditingValue(
      text: filteredText,
      selection: TextSelection.collapsed(offset: filteredText.length),
    );
  }
}
