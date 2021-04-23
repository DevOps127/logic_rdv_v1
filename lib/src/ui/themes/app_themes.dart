import 'package:google_fonts/google_fonts.dart';

import '../helpers/common_import.dart';

class AppThemes {
  static ThemeData get lightTheme {
    return ThemeData(
      fontFamily: GoogleFonts.openSans().fontFamily,
      primaryColor: AppColors.colorPrimary,
      brightness: Brightness.light,
      primarySwatch: AppColors.colorPrimary,
      appBarTheme: const AppBarTheme(
        elevation: 0,
        backgroundColor: AppColors.colorPrimary,
        brightness: Brightness.dark,
      ),
      textTheme: TextTheme(
        bodyText1: GoogleFonts.openSans(
          fontSize: 14.0,
          fontWeight: FontWeight.w700,
          color: Colors.black,
        ),
        headline1: GoogleFonts.openSans(
          fontSize: 32.0,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
        headline2: GoogleFonts.openSans(
          fontSize: 21.0,
          fontWeight: FontWeight.w700,
          color: Colors.black,
        ),
        headline3: GoogleFonts.openSans(
          fontSize: 16.0,
          fontWeight: FontWeight.w600,
          color: Colors.black,
        ),
        headline6: GoogleFonts.openSans(
          fontSize: 17.5,
          fontWeight: FontWeight.w700,
          color: Colors.white,
        ),
      ),
    );
  }
}
