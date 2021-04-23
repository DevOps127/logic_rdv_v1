import 'dart:async';

import 'src/ui/helpers/common_import.dart';

bool get isInDebugMode {
  var inDebugMode = true;
  assert(inDebugMode = true);
  return inDebugMode;
}

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runZonedGuarded(() async {
    runApp(
      const MyApp(),
    );
  }, (error, stackTrace) async {
    print('Caught Errors');
    if (isInDebugMode) {
      // Print error in the console in the development mode
      print('$error');
      print('$stackTrace');
    } else {}
  });
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xFF4e8fda),
        brightness: Brightness.light,
        primarySwatch: Colors.blue,
      ),
      title: 'LogicRdv',
      onGenerateTitle: (_) => 'LogicRdv',
      navigatorKey: RouteGenerator.key,
      initialRoute: RouteGenerator.welcomeScreen,
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
