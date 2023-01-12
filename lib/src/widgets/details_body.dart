import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:touchworld/src/models/products_model.dart';
import 'package:touchworld/src/providers/products_provider.dart';

class DetailsBody extends StatelessWidget {

  DetailsBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return FutureBuilder(
      future: context.read<ProductsProvider>().getAllProducts(),
      builder: (context, snapshot) {
        return ListView.builder(
          itemCount: snapshot.data!.data!.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                SizedBox(
                  height: size.height,
                  child: Stack(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: size.height * 0.3),
                        height: 600,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(24),
                              topRight: Radius.circular(24)),
                          color: Colors.white,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20.0, top: 150),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Color",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Container(
                                            margin: EdgeInsets.only(
                                                top: 5, right: 10),
                                            height: 24,
                                            width: 24,
                                            decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                border: Border.all(
                                                    color: Colors.blueAccent),
                                                color: Color.fromRGBO(
                                                    55, 108, 150, 1)),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(
                                                top: 5, right: 10),
                                            height: 24,
                                            width: 24,
                                            decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                border: Border.all(
                                                    color: Colors.blueAccent),
                                                color: Color.fromRGBO(
                                                    247, 192, 125, 1)),
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(
                                                top: 5, right: 10),
                                            height: 24,
                                            width: 24,
                                            decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                border: Border.all(
                                                    color: Colors.blueAccent),
                                                color: Color.fromRGBO(
                                                    156, 152, 151, 1)),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 60.0, top: 160),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Size",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      Text(
                                        "12 cm",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20.0),
                              child: Text(
                                  snapshot.data!.data![index].description ??
                                      ""),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.remove_circle_outline)),
                                Text(
                                  "01",
                                  style: TextStyle(fontSize: 16),
                                ),
                                IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                        Icons.add_circle_outline_outlined)),
                                SizedBox(
                                  width: 260,
                                ),
                                IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.favorite,
                                      color: Colors.red,
                                    ))
                              ],
                            ),
                            SizedBox(
                              height: 70,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20.0),
                              child: Row(
                                children: [
                                  Container(
                                    height: 60,
                                    width: 70,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12),
                                        border: Border.all(
                                            color: Color.fromRGBO(
                                                55, 108, 150, 1))),
                                    child: IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.shopping_cart_outlined,
                                          color:
                                              Color.fromRGBO(55, 108, 150, 1)),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  ElevatedButton(
                                    onPressed: () {},
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 90.0,
                                          right: 90,
                                          top: 15,
                                          bottom: 15),
                                      child: Text(
                                        "BUY NOW",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20),
                                      ),
                                    ),
                                    style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStateProperty.all(
                                                Color.fromRGBO(
                                                    61, 129, 174, 1))),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              snapshot.data!.data![index].name ?? "",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            ),
                            Text(
                              snapshot.data!.data![index].brand ?? "",
                              style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Row(
                              children: [
                                RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: "Price",
                                      ),
                                      TextSpan(
                                          text:
                                              "₹${snapshot.data!.data![index].price}",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 22))
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Expanded(
                                    child: Image.network(
                                  snapshot.data!.data![index].image ?? "",
                                  fit: BoxFit.fill,
                                ))
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            );
          },
        );
      },
    );
  }
}




