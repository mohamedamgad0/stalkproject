import 'package:flutter/material.dart';
import 'package:stalkproject/Constants.dart';

class LoginScreenBackground extends StatelessWidget {
  const LoginScreenBackground({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: defaultPadding * 2),
        Row(
          children: [
            const Spacer(),
            Expanded(
              flex: 8,
              child: Image.asset("asset/Image/E-Commerce 2.png"),
            ),
            const Spacer(),
          ],
        ),
        SizedBox(height: defaultPadding * 2),
      ],
    );
  }
}
