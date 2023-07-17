part of arabic_number_formatter;
String convertNumbers(String? input,
      {Language? languageFrom,
      Language? languageTo,
      String charOfOutput = '' , 
      
      bool isArabic=false}) {
    String output = charOfOutput;
    if (languageFrom == null && languageTo == null) {
      if (isArabic) {
        languageFrom = Language.en;
        languageTo = Language.ar;
      } else {
        languageFrom = Language.ar;
        languageTo = Language.en;
      }
    }
    if (input != null && input != 'null' && input.isNotEmpty) {
      output = input;
      var fromNumerals = numbersMap[languageFrom!.value];
      var toNumerals = numbersMap[languageTo!.value];

      for (var i = 0; i < fromNumerals!.length; i++) {
        output = output.replaceAll(fromNumerals[i], toNumerals![i]);
      }
    }
    return output;
  }