import 'package:flutter/material.dart';

class TextInput extends StatelessWidget {
  final String labelButton;
  final TextEditingController controlador;
  final IconData icon;

  const TextInput({
    Key? key,
    required this.controlador,
    required this.labelButton,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          elevation: 5,
          shape: ShapeBorder.lerp(
            const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(100),
              ),
            ),
            const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(100),
              ),
            ),
            1,
          ),
          child: TextField(
            controller: controlador,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              prefixIcon: Icon(icon),
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: (20), vertical: (10)),
              label: Text(labelButton),
              border: InputBorder.none,
            ),
          ),
        ),
        const SizedBox(height: 5),
      ],
    );
  }
}
