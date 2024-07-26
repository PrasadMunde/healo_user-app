import 'package:flutter/material.dart';

import '../../../constants/colors.dart';
import '../../../constants/sizes.dart';

class TOutlinedButtonTheme{
  TOutlinedButtonTheme._();

  static final ligthOutlinedButtonTheme= OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
          elevation: 0,
          shape: RoundedRectangleBorder(),
          foregroundColor: tSecondaryColor,
          backgroundColor: tWhiteColor,
          side: BorderSide(color: tSecondaryColor),
          padding: EdgeInsets.symmetric(vertical: tButtonHeight)
      )
  );
 static final darkOutlinedButtonTheme= OutlinedButtonThemeData(
     style: OutlinedButton.styleFrom(
         elevation: 0,
         shape: RoundedRectangleBorder(),
         foregroundColor: tSecondaryColor,
         backgroundColor: tWhiteColor,
         side: BorderSide(color: tSecondaryColor),
         padding: EdgeInsets.symmetric(vertical: tButtonHeight)
     )
 );
}