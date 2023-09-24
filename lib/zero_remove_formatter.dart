part of 'arabic_number_formatter.dart';

class RemoveLeadingZeroFormatter extends TextInputFormatter {
  final  void Function()? onZeroEnter;
  RemoveLeadingZeroFormatter({this.onZeroEnter});
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    if (newValue.text.isNotEmpty && (newValue.text.startsWith('0')|| newValue.text.startsWith('٠'))) {
      if(onZeroEnter!=null){
        onZeroEnter!();
        }
      // Prevent the input if it starts with '0'
      return oldValue;
    }
    return newValue;
  }
}
