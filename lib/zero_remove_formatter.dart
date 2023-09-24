part of 'arabic_number_formatter.dart';

class RemoveLeadingZeroFormatter extends TextInputFormatter {
  final  void Function()? onZeroEntered;
  RemoveLeadingZeroFormatter({this.onZeroEntered});
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    if (newValue.text.isNotEmpty && (newValue.text.startsWith('0')|| newValue.text.startsWith('٠'))) {
      if(onZeroEntered!=null){
        onZeroEntered!();
        }
      // Prevent the input if it starts with '0'
      return oldValue;
    }
    return newValue;
  }
}
