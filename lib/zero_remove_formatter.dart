part of 'arabic_number_formatter.dart';

class RemoveLeadingZeroFormatter extends TextInputFormatter {
  final bool isArabic;

  RemoveLeadingZeroFormatter({required this.isArabic});
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    String newText = newValue.text;

    // Remove leading zeros from the input string

    if (isArabic) {
      newText = newText.replaceAll(RegExp('^0+'), '');
    } else {
      newText = newText.replaceAll(RegExp('^٠+'), '');
    }

    return TextEditingValue(
      text: newText,
      selection: newValue.selection,
    );
  }
}
