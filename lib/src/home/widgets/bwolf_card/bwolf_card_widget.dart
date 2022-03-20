import 'package:flutter/material.dart';

class BwolfCardWidget extends StatefulWidget {
  final String title;
  final Function() onTap;

  const BwolfCardWidget({
    Key? key,
    required this.title,
    required this.onTap,
  }) : super(key: key);

  @override
  State<BwolfCardWidget> createState() => _BwolfCardWidgetState();
}

class _BwolfCardWidgetState extends State<BwolfCardWidget> {
  double elevation = 4;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: elevation,
      color: Colors.red,
      borderRadius: BorderRadius.circular(16),
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: () {
          elevation = 4;
          widget.onTap();
          setState(() {});
        },
        onTapDown: (_) {
          elevation = 7;
          setState(() {});
        },
        onTapCancel: () {
          elevation = 4;
          setState(() {});
        },
        child: Container(
          padding: const EdgeInsets.all(16),
          child: Text(widget.title),
        ),
      ),
    );
  }
}
