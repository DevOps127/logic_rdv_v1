import '../../helpers/common_import.dart';
import '../../shared/buttons/default_elevated_button.dart';
import '../../shared/default_textformfield.dart';

class ConnexionScreen extends StatefulWidget {
  const ConnexionScreen({Key key}) : super(key: key);
  @override
  _ConnexionScreenState createState() => _ConnexionScreenState();
}

class _ConnexionScreenState extends State<ConnexionScreen> {
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
        brightness: Brightness.dark,
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
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
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
                    const SizedBox(height: 20),
                    DefaultTextFormField(
                      hintText: 'Adresse email ou numéro de téléphone',
                      validator: (value) {},
                    ),
                    const SizedBox(height: 8),
                    TextFormField(
                      key: _key,
                      decoration: InputDecoration(
                        prefixIcon: const Icon(
                          Icons.lock,
                          color: Color(0xFFd3e0ea),
                        ),
                        suffixIcon: _showPassword
                            ? InkWell(
                                onTap: () {
                                  setState(() {
                                    _showPassword = !_showPassword;
                                  });
                                },
                                child: const Icon(
                                  Icons.remove_red_eye_outlined,
                                  color: AppColors.colorHintText,
                                ),
                              )
                            : InkWell(
                                onTap: () {
                                  setState(() {
                                    _showPassword = !_showPassword;
                                  });
                                },
                                child: const Icon(
                                  Icons.remove_red_eye_outlined,
                                  color: AppColors.colorHintText,
                                ),
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
                          color: AppColors.colorHintText,
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    Row(
                      children: [
                        _CheckBoxRemenberMe(
                          isChecked: _isChecked,
                          onCheckedBoxChanged: (checked) {
                            setState(() {
                              _isChecked = checked;
                            });
                          },
                        ),
                        const SizedBox(width: 8),
                        const Text('Se souvenir de moi'),
                      ],
                    ),
                    const SizedBox(height: 16),
                    DefaultElevatedButton(
                      textFieldHeight: _textFieldHeight,
                      onPressed: () {},
                      child: const Text('Se connecter'),
                    ),
                    const SizedBox(height: 8),
                    TextButton(
                      onPressed: () => Navigator.of(context)
                          .pushNamed(RouteGenerator.forgotPasswordScreen),
                      child: Text(
                        'Mot de passe oubliè'.toUpperCase(),
                        style: const TextStyle(
                          color: AppColors.colorPrimary,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    const Divider(),
                  ],
                ),
              ),
              const SizedBox(height: 20),
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
                      'Nouveau sur LogicRdv ?',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        color: Color(0xFF1c2b2d),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context)
                            .pushNamed(RouteGenerator.registerScreen);
                      },
                      child: Text(
                        'Inscription Rapide'.toUpperCase(),
                        style: const TextStyle(
                          fontSize: 12,
                        ),
                      ),
                    )
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

class _CheckBoxRemenberMe extends StatefulWidget {
  final bool isChecked;
  final Duration transitionDuration;
  final Function(bool isChecked) onCheckedBoxChanged;
  final Color inactiveColor;
  final Color activeColor;
  const _CheckBoxRemenberMe({
    Key key,
    this.isChecked,
    this.onCheckedBoxChanged,
    this.transitionDuration = const Duration(milliseconds: 300),
    this.inactiveColor,
    this.activeColor = const Color(0xFF4e8fda),
  }) : super(key: key);

  @override
  __CheckBoxRemenberMeState createState() => __CheckBoxRemenberMeState();
}

class __CheckBoxRemenberMeState extends State<_CheckBoxRemenberMe>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        vsync: this, duration: widget.transitionDuration, lowerBound: 0.5);
  }

  @override
  void didUpdateWidget(covariant _CheckBoxRemenberMe oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (widget.isChecked && !oldWidget.isChecked) {
      _controller.forward();
    } else if (!widget.isChecked && oldWidget.isChecked) {
      _controller.reverse();
    }
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.onCheckedBoxChanged(!widget.isChecked);
      },
      child: AnimatedContainer(
        duration: widget.transitionDuration,
        decoration: BoxDecoration(
          color:
              widget.isChecked ? const Color(0xFF4e8fda) : Colors.transparent,
          border: Border.all(
            color: widget.isChecked
                ? const Color(0xFF4e8fda)
                : const Color(0xFFd3e0ea),
          ),
          borderRadius: BorderRadius.circular(4),
        ),
        child: widget.isChecked
            ? ScaleTransition(
                scale: _controller,
                child: const Icon(
                  Icons.check,
                  color: Color(0xFFd3e0ea),
                ),
              )
            : const SizedBox(width: 24, height: 24),
      ),
    );
  }
}
