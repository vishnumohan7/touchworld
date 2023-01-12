import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:touchworld/src/providers/products_provider.dart';
import 'package:touchworld/src/widgets/category_slide.dart';
import 'package:touchworld/src/widgets/product_card.dart';

class ProductsPage extends StatelessWidget {
   ProductsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
            onPressed: () {

            }, icon: SvgPicture.asset("assets/icons/back.svg")),
        actions: [
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset("assets/icons/search.svg",
                  color: Colors.black38)),
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset("assets/icons/cart.svg",
                  color: Colors.black38)),
        ],
      ),
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Women",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 15,),
              Categories(),
              SizedBox(height: 10,),
              ProductsCard()
            ],
          ),
        ),
      ),
    );
  }
}


