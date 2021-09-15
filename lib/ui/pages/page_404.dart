import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/shared/custom_flat_button.dart';

class Page404 extends StatelessWidget {
  const Page404({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '404',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'No se encontró la pagina',
              style: TextStyle(fontSize: 20),
            ),
            CustomFlatButton(
              text: 'Regresar',
              onPressed: () => Navigator.pushNamed(context, '/stateful'),
            )
          ],
        ),
      ),
    );
  }
}
