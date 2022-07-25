import 'package:flutter/material.dart';

class HeaderTitle extends StatelessWidget {
  const HeaderTitle({Key? key, required this.title, required this.press}) : super(key: key);
  final String title;
  final Function() press;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          '$title',
          style: Theme.of(context).textTheme.headline6,
        ),
        Spacer(),
        IconButton(
          onPressed: press,
          icon: Icon(
            Icons.arrow_forward_ios,
          ),
        ),
      ],
    );
  }
}
