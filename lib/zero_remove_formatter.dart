part of 'arabic_number_formatter.dart';

class RemoveLeadingZeroFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    String newText = newValue.text;

    // Remove leading zero digits (either Arabic or English)
    newText = newText.replaceAll(RegExp(r'^[0٠]+'), '');

    return TextEditingValue(
      text: newText,
      selection: newValue.selection,
    );
  }
}
