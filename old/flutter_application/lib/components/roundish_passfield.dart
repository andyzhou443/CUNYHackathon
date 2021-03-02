import 'package:flutter/material.dart';
import 'package:flutter_application/components/text_field_container.dart';
import 'package:flutter_application/constants.dart';

class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const RoundedPasswordField({
    Key key,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: true,
        onChanged: onChanged,
        cursorColor: darkgreenaccents,
        decoration: InputDecoration(
          hintText: "Password",
          icon: Icon(
            Icons.lock,
            color: darkgreenaccents,
          ),
          suffixIcon: Icon(
            Icons.visibility,
            color: darkgreenaccents,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
