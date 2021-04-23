import '../../helpers/common_import.dart';
import '../../shared/buttons/default_elevated_button.dart';
import '../../shared/default_textformfield.dart';
import '../../shared/my_appbar.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({Key key}) : super(key: key);

  @override
  _ForgotPasswordScreenState createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  double _textFieldHeight = 0;
  final _key = GlobalKey();
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() {
        _textFieldHeight = _key.currentContext.size.height;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(
        title: 'Mot de passe oublié',
        centerTile: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 36, 16, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                'Mot de passe oublié.',
                style: TextStyle(
                  fontSize: 22,
                  color: AppColors.colorPrimary,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                'Veillez entrer votre adresse email.\nNous '
                'vous enverons un email contenant votre '
                'nouveau mot de passe',
                style: TextStyle(
                  color: Colors.grey.withOpacity(.5),
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 50),
              DefaultTextFormField(
                key: _key,
                hintText: 'Entrez votre email',
              ),
              const SizedBox(height: 20),
              DefaultElevatedButton(
                textFieldHeight: _textFieldHeight,
                onPressed: () {},
                child: const Text('Envoyer'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
