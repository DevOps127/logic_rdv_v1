import '../helpers/common_import.dart';

class DefaultTextFormField extends StatelessWidget {
  final String hintText;
  final TextInputAction textInputAction;
  final TextInputType textInputType;
  final TextEditingController controller;
  final bool autoFocus;
  final FocusNode focusNode;

  final Function(String value) validator;
  const DefaultTextFormField({
    Key key,
    this.hintText,
    this.validator,
    this.textInputAction,
    this.textInputType,
    this.controller,
    this.autoFocus = false,
    this.focusNode,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      autofocus: autoFocus,
      focusNode: focusNode,
      keyboardType: textInputType,
      validator: validator,
      textInputAction: textInputAction,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: AppColors.colorHintText,
            width: 0,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: AppColors.colorHintText,
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
        hintStyle: const TextStyle(
          fontWeight: FontWeight.normal,
          fontSize: 14,
          color: AppColors.colorHintText,
        ),
      ),
    );
  }
}
