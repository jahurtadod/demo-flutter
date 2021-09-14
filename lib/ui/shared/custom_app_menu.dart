import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/shared/custom_flat_button.dart';

class CustomAppMenu extends StatelessWidget {
  const CustomAppMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      width: double.infinity,
      child: Row(
        children: [
          CustomFlatButton(
            text: 'Contador Stateful',
            onPressed: () => Navigator.pushNamed(context, '/stateful'),
          ),
          SizedBox(
            width: 10,
          ),
          CustomFlatButton(
            text: 'Contador Provider',
            onPressed: () => Navigator.pushNamed(context, '/provider'),
          ),
          SizedBox(
            width: 10,
          ),
          CustomFlatButton(
            text: 'Otra página',
            onPressed: () => Navigator.pushNamed(context, '/not-fount'),
          ),
        ],
      ),
    );
  }
}
