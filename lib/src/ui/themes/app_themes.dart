import '../helpers/common_import.dart';

class AppThemes {
  static ThemeData get lightTheme {
    return ThemeData(
      primaryColor: AppColors.colorPrimary,
      brightness: Brightness.light,
      primarySwatch: AppColors.colorPrimary,
    );
  }
}
