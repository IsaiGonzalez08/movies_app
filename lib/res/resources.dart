import 'package:flutter/cupertino.dart';
import 'package:movies_app/res/colors/app_colors.dart';
import 'package:movies_app/res/dimentions/app_dimentions.dart';
import 'package:movies_app/res/strings/english_strings.dart';
import 'package:movies_app/res/strings/french_strings.dart';
import 'package:movies_app/res/strings/strings.dart';


class Resources {
  BuildContext context;

  Resources(this.context);

  Strings get strings {
    Locale locale = Localizations.localeOf(context);
    switch (locale.languageCode) {
      case 'fr':
        return FrenchStrings();
      default:
        return EnglishStrings();
    }
  }

  AppColors get color {
    return AppColors();
  }

  AppDimension get dimension {
    return AppDimension();
  }

  static Resources of(BuildContext context){
    return Resources(context);
  }
}