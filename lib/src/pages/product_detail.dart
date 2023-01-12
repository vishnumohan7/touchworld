import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:touchworld/src/providers/products_provider.dart';
import 'package:touchworld/src/widgets/details_body.dart';

class ProductDetails extends StatelessWidget {
  ProductDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(61, 129, 174, 1),
        automaticallyImplyLeading: true,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: SvgPicture.asset(
              "assets/icons/back.svg",
              color: Colors.white,
            )),
        actions: [
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                "assets/icons/search.svg",
              )),
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                "assets/icons/cart.svg",
              )),
        ],
      ),
      backgroundColor: Color.fromRGBO(61, 129, 174, 1),
      body: DetailsBody(),
    );
  }
}
