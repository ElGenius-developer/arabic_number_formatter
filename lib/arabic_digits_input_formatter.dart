part of 'arabic_number_formatter.dart';

class ArabicDigitsInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    String filteredText = newValue.text;

    // Filter out non-Arabic digits
    filteredText = filteredText.replaceAll(RegExp(r'[^\u0660-\u0669]'), '');

    return TextEditingValue(
      text: filteredText,
      selection: TextSelection.collapsed(offset: filteredText.length),
    );
  }
}