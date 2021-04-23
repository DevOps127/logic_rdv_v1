import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen();
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool _showPassword = false;
  Color primaryColor = Color(0xFF4e8fda);
  bool _isChecked = false;

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
      backgroundColor: Color(0xFFd3e0ea),
      appBar: AppBar(
        elevation: 0,
        brightness: Brightness.dark,
        leading: IconButton(
          splashRadius: 20,
          icon: Icon(
            Icons.arrow_back_ios,
            size: 20,
            color: Colors.white,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          'Se connecter',
          style: TextStyle(
            fontSize: 17.5,
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: primaryColor,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                padding: EdgeInsets.only(
                  top: 16,
                  left: 16,
                  right: 16,
                  bottom: 0,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [
                    Text(
                      'J\'ai déjà un compte LogicRdv',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        color: Color(0xFF1c2b2d),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text(
                        'Se connecter'.toUpperCase(),
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      'Nouveau sur LogicRdv',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        color: Color(0xFF1c2b2d),
                      ),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      'Saisissez vos informations pour continuer',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xFF1c2b2d),
                      ),
                    ),
                    const SizedBox(height: 20),
                    DefaultTextField(
                      hintText: 'Nom',
                    ),
                    const SizedBox(height: 8),
                    DefaultTextField(
                      hintText: 'Prénom',
                    ),
                    const SizedBox(height: 8),
                    DefaultTextField(
                      hintText: 'Numèro de téléphone',
                    ),
                    const SizedBox(height: 8),
                    DefaultTextField(
                      hintText: 'Email',
                    ),
                    const SizedBox(height: 8),
                    DefaultTextField(
                      hintText: 'Adresse',
                    ),
                    const SizedBox(height: 8),
                    DefaultTextField(
                      hintText: 'Ville',
                    ),
                    const SizedBox(height: 8),
                    DefaultTextField(
                      hintText: 'Code Postal',
                    ),
                    const SizedBox(height: 8),
                    TextFormField(
                      key: _key,
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.lock,
                          color: Color(0xFFd3e0ea),
                        ),
                        suffixIcon: Icon(
                          Icons.remove_red_eye_outlined,
                          color: Color(0xFFd3e0ea),
                        ),
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 16, vertical: 0),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Color(0xFFd3e0ea),
                            width: 0,
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Color(0xFFd3e0ea),
                            width: 0,
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        disabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Color(0xFFd3e0ea),
                            width: 0,
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        hintText: 'Mot de passe',
                        hintStyle: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 14,
                          color: Color(0xFFd3e0ea),
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.lock,
                          color: Color(0xFFd3e0ea),
                        ),
                        suffixIcon: Icon(
                          Icons.remove_red_eye_outlined,
                          color: Color(0xFFd3e0ea),
                        ),
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 16, vertical: 0),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Color(0xFFd3e0ea),
                            width: 0,
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Color(0xFFd3e0ea),
                            width: 0,
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        disabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Color(0xFFd3e0ea),
                            width: 0,
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        hintText: 'Confirmer le mot de passe',
                        hintStyle: TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 14,
                          color: Color(0xFFd3e0ea),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    Container(
                      height: _textFieldHeight,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text('M\'inscrire'),
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.all(12),
                          elevation: 0,
                          primary: primaryColor,
                          onPrimary: Colors.white,
                        ),
                      ),
                    ),
                    Divider(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DefaultTextField extends StatelessWidget {
  final String hintText;
  const DefaultTextField({
    Key key,
    this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 0),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Color(0xFFd3e0ea),
            width: 0,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Color(0xFFd3e0ea),
            width: 0,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        disabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.grey,
            width: 0,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        hintText: hintText,
        hintStyle: TextStyle(
          fontWeight: FontWeight.normal,
          fontSize: 14,
          color: Color(0xFFd3e0ea),
        ),
      ),
    );
  }
}
