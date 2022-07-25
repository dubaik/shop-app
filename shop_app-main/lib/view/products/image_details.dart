import 'package:flutter/material.dart';

class ImageDetails extends StatelessWidget {
  const ImageDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'assets/images/product55.png',
              ),
              fit: BoxFit.cover,
            )),
      ),
    );
  }
}
