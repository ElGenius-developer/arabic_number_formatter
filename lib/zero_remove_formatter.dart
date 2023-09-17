part of 'arabic_number_formatter.dart';

class RemoveLeadingZeroFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    String newText = newValue.text;
    // Remove leading zeros from the input string
    newText = newText.replaceAll(RegExp('^0+'), '');

    return TextEditingValue(
      text: newText,
      selection: newValue.selection,
    );
  }
}
