import 'package:flutter/material.dart';
import 'package:stalkproject/Constants.dart';

class WelcomeImage extends StatelessWidget {
  const WelcomeImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          Text(
            "WELCOME TO TECMOGZ",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(height: defaultPadding * 2),
          Row(
            children: [
              Spacer(),
              Expanded(
                flex: 8,
                child: Image.asset(
                  "asset/Image/E-Commerce.png",
                ),
              ),
              Spacer(),
            ],
          ),
          SizedBox(height: defaultPadding * 2),
        ],
      ),
    );
  }
}
