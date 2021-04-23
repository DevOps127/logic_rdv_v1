import 'ui/helpers/common_import.dart';

class RouteGenerator {
  static const String welcomeScreen = '/';
  static const String connexionScreen = '/connexion-screen';
  static const String registerScreen = '/register-screen';
  static const String forgotPasswordScreen = '/forgot-password-screen';

  static final key = GlobalKey<NavigatorState>();

  RouteGenerator._();

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case welcomeScreen:
        return MaterialPageRoute<dynamic>(
          builder: (_) => const WelcomeScreen(),
        );
      case connexionScreen:
        return MaterialPageRoute<dynamic>(
          builder: (_) => const ConnexionScreen(),
        );
      case registerScreen:
        return MaterialPageRoute<dynamic>(
          builder: (_) => const RegisterScreen(),
        );
      case forgotPasswordScreen:
        return MaterialPageRoute<dynamic>(
          builder: (_) => const ForgotPasswordScreen(),
        );
      default:
        throw const RouteException('Page not found');
    }
  }
}

class RouteException implements Exception {
  final String message;

  const RouteException(this.message);
}
