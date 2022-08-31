import 'package:flutter/material.dart';
import 'package:stalkproject/Constants.dart';

class SignUpBackground extends StatelessWidget {
  const SignUpBackground({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: defaultPadding),
        Row(
          children: [
            const Spacer(),
            Expanded(
              flex: 8,
              child: Image.asset("asset/Image/E-Commerce 3.png"),
            ),
            const Spacer(),
          ],
        ),
        SizedBox(height: defaultPadding),
      ],
    );
  }
}
