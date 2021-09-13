import 'package:flutter/material.dart';

class PadButton extends StatelessWidget {
  final void Function() onTap;
  const PadButton({Key? key, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 64,
      width: 64,
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(32)),
        child: GestureDetector(
          child: Container(
            decoration: BoxDecoration(
                color: const Color(0x88ffffff),
                borderRadius: BorderRadius.circular(32)),
          ),
          onTap: onTap,
        ),
      ),
    );
  }
}
