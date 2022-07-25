import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BuildDetails extends StatelessWidget {
  const BuildDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(
              30,
            ),
            topRight: Radius.circular(
              30,
            ),
          ),
          color: Colors.grey[200],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.only(
                start: 20,
                top: 20,
                bottom: 20,
              ),
              child: Text(
                'Car Classic',
                style: Theme.of(context).textTheme.headline5!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(
                start: 20,
                bottom: 20,
              ),
              child: Text(
                'Details',
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Text(
                'The 2021 Porsche Cayman claims one of the top spots in our luxury sports car rankings. Its the total package, with powerful engines, adept handling, and a swanky, comfortable interior.',
                style: Theme.of(context).textTheme.subtitle1,
              ),
            ),
            Spacer(),
            Container(
              width: double.infinity,
              height: 150,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(
                    30,
                  ),
                  topRight: Radius.circular(
                    30,
                  ),
                ),
              ),
              child: Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '\$60,499.99',
                            style: Theme.of(context).textTheme.headline6,
                          ),
                          Text(
                            'Total Payment',
                            style: Theme.of(context).textTheme.subtitle1,
                          ),
                        ],
                      ),
                      Spacer(),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          width: 150,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.all(
                              Radius.circular(
                                20,
                              ),
                            ),
                          ),
                          child: Align(
                            alignment: AlignmentDirectional.center,
                            child: Text(
                              'Buy Now',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline6!
                                  .copyWith(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
