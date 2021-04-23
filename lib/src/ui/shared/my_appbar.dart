import '../helpers/common_import.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool centerTile;
  final List<Widget> actions;
  const MyAppBar({
    Key key,
    this.title,
    this.centerTile = true,
    this.actions = const <Widget>[],
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
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
      title: Text(
        title,
        style: const TextStyle(
          fontSize: 17.5,
          fontWeight: FontWeight.w700,
          color: Colors.white,
        ),
      ),
      actions: actions,
      centerTitle: centerTile,
      backgroundColor: primaryColor,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);
}
