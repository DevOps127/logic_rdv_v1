import 'ui/helpers/common_import.dart';

class RouteGenerator {
  static const String welcomeScreen = '/';
  static const String connexionScreen = '/connexion-screen';

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
          builder: (_) => const RegisterScreen(),
        );
      default:
        throw RouteException('Page not found');
    }
  }
}

class RouteException implements Exception {
  final String message;

  const RouteException(this.message);
}
