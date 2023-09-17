part of 'arabic_number_formatter.dart';

class ArabicDigitsInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    String filteredText = newValue.text.replaceAll(RegExp('[^٠-٩]'), '');

    return TextEditingValue(
      text: filteredText,
      selection: TextSelection.collapsed(offset: filteredText.length),
    );
  }
}