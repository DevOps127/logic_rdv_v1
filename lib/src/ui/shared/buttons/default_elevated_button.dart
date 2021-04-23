import '../../helpers/common_import.dart';

class DefaultElevatedButton extends StatelessWidget {
  final Color onPrimary;
  final Color primary;
  final Widget child;
  final Function onPressed;

  const DefaultElevatedButton({
    Key key,
    @required double textFieldHeight,
    this.onPrimary = AppColors.colorWhite,
    this.primary = AppColors.colorPrimary,
    this.child,
    this.onPressed,
  })  : _textFieldHeight = textFieldHeight,
        super(key: key);

  final double _textFieldHeight;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: _textFieldHeight,
      child: ElevatedButton(
        onPressed: onPressed,
        child: child,
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.all(12),
          elevation: 0,
          primary: primaryColor,
          onPrimary: onPrimary,
        ),
      ),
    );
  }
}
