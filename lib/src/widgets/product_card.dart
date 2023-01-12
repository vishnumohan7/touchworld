import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:touchworld/src/models/products_model.dart';
import 'package:touchworld/src/pages/product_detail.dart';
import 'package:touchworld/src/providers/products_provider.dart';

class ProductsCard extends StatelessWidget {
  ProductsCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FutureBuilder(
        future: context.read<ProductsProvider>().getAllProducts(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return GridView.builder(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, childAspectRatio: 0.80),
              itemCount: snapshot.data!.data!.length,
              itemBuilder: (context, index) {
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => ProductDetails()));
                        },
                        child: Container(
                          height: 160,
                          width: 160,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: Color.fromRGBO(251, 119, 130, 1.0),
                          ),
                          child: Image.network(
                              snapshot.data!.data![index].image ?? ""),
                        ),
                      ),
                    ),
                    Text(
                      snapshot.data!.data![index].name ?? "",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.black38),
                    ),
                    Text(
                      "₹${snapshot.data!.data![index].price ?? ""}",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                );
              },
            );
          } else if (snapshot.hasError) {
            return Text(snapshot.error.toString());
          }
          return Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}


