import 'package:flutter/material.dart';

import '../../pages/app_color_controller.dart';

class AppBarCustom extends StatefulWidget implements PreferredSizeWidget {
  final AppBarColorController controller;
  const AppBarCustom({Key? key, required this.controller}) : super(key: key);

  @override
  State<AppBarCustom> createState() => _AppBarCustomState();

  @override
  Size get preferredSize => const Size.fromHeight(60);
}

class _AppBarCustomState extends State<AppBarCustom> {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<Color>(
        valueListenable: widget.controller,
        builder: (context, produto, child) {
          return AppBar(backgroundColor: produto, title: const Text('Minha Home'));
        });
  }
}
