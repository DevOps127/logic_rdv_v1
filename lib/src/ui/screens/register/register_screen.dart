import 'package:flutter/material.dart';

import '../../helpers/common_import.dart';
import '../../shared/default_textformfield.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen();
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool _showPassword = false;
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
      backgroundColor: AppColors.colorScaffoldBackground,
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          splashRadius: 20,
          icon: const Icon(
            Icons.arrow_back_ios,
            size: 20,
            color: Colors.white,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text(
          'Inscription rapide',
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
                padding: const EdgeInsets.only(
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
                    const Text(
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
                        style: const TextStyle(
                          fontSize: 12,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const Text(
                      'Nouveau sur LogicRdv',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        color: Color(0xFF1c2b2d),
                      ),
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      'Saisissez vos informations pour continuer',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xFF1c2b2d),
                      ),
                    ),
                    const SizedBox(height: 20),
                    const DefaultTextFormField(
                      hintText: 'Nom',
                    ),
                    const SizedBox(height: 8),
                    const DefaultTextFormField(
                      hintText: 'Prénom',
                    ),
                    const SizedBox(height: 8),
                    const DefaultTextFormField(
                      hintText: 'Numèro de téléphone',
                    ),
                    const SizedBox(height: 8),
                    const DefaultTextFormField(
                      hintText: 'Email',
                    ),
                    const SizedBox(height: 8),
                    const DefaultTextFormField(
                      hintText: 'Adresse',
                    ),
                    const SizedBox(height: 8),
                    const DefaultTextFormField(
                      hintText: 'Ville',
                    ),
                    const SizedBox(height: 8),
                    const DefaultTextFormField(
                      hintText: 'Code Postal',
                    ),
                    const SizedBox(height: 8),
                    TextFormField(
                      key: _key,
                      decoration: InputDecoration(
                        prefixIcon: const Icon(
                          Icons.lock,
                          color: Color(0xFFd3e0ea),
                        ),
                        suffixIcon: const Icon(
                          Icons.remove_red_eye_outlined,
                          color: Color(0xFFd3e0ea),
                        ),
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 0),
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
                        hintStyle: const TextStyle(
                          fontWeight: FontWeight.normal,
                          fontSize: 14,
                          color: Color(0xFFd3e0ea),
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: const Icon(
                          Icons.lock,
                          color: Color(0xFFd3e0ea),
                        ),
                        suffixIcon: const Icon(
                          Icons.remove_red_eye_outlined,
                          color: Color(0xFFd3e0ea),
                        ),
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 0),
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
                        hintStyle: const TextStyle(
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
                        child: const Text('M\'inscrire'),
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.all(12),
                          elevation: 0,
                          primary: primaryColor,
                          onPrimary: Colors.white,
                        ),
                      ),
                    ),
                    const Divider(),
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
