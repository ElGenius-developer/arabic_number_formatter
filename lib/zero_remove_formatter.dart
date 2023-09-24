part of 'arabic_number_formatter.dart';

class RemoveLeadingZeroFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    if (newValue.text.isNotEmpty && (newValue.text.startsWith('0')|| newValue.text.startsWith('٠'))) {
       final snackBar = SnackBar(
              content: Text(
               "Enter phone number without 0 ",
              ),

              // closeIconColor: textColor,
              backgroundColor: const Color(0x7b0e16ab),
              duration: const Duration(seconds: 2),
              showCloseIcon: true,
              dismissDirection: DismissDirection.down,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
            );
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
      // Prevent the input if it starts with '0'
      return oldValue;
    }
    return newValue;
  }
}
