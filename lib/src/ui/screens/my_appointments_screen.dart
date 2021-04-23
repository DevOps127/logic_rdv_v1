import '../helpers/common_import.dart';
import '../shared/my_appbar.dart';

class MyAppointmentScreen extends StatelessWidget {
  const MyAppointmentScreen({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: MyAppBar(
        title: 'Mes rendez-vous',
      ),
    );
  }
}
