import 'package:flutter/material.dart';
import '../theme/app_color.dart';

class MainAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final void Function()? onPressed;

  const MainAppBar({super.key, required this.title, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      backgroundColor: AppColor.lineGrey,
      title: Text(
        title,
        style: TextStyle(
            color: AppColor.backSplash,
            fontSize: 20,
            fontWeight: FontWeight.bold),
      ),
    );
  }
  @override
  Size get preferredSize => const Size.fromHeight(50.0);
}
