part of 'arabic_number_formatter.dart';

class RemoveLeadingZeroFormatter extends TextInputFormatter {

  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    String newText = newValue.text;

    if (newText.isNotEmpty) {
      // Check if the first character is a zero digit (either Arabic or English)
      bool isFirstCharZero = newText.startsWith('0') || newText.startsWith('٠');

      // Remove the leading zero digit if present
      if (isFirstCharZero) {
        newText = newText.substring(1);
      }
    }

    return TextEditingValue(
      text: newText,
      selection: newValue.selection,
    );
  }
}
