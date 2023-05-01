import 'package:flutter/material.dart';
import 'package:grocery_app/utils/model.dart';

import '../../modals/globals.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  int i = 1;
  @override
  Widget build(BuildContext context) {
    product vegetables = ModalRoute.of(context)!.settings.arguments as product;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Details Page",
          style: TextStyle(
            fontSize: 25,
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed('billprint_page');
            },
            child: Icon(Icons.shopping_cart),
          ),
          SizedBox(
            width: 15,
          ),
        ],
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(16),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              Container(
                alignment: Alignment.bottomRight,
                height: 400,
                width: 600,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                      image: AssetImage(
                        vegetables.image.toString(),
                      ),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 8,
                      ),
                    ]),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          (i <= 1) ? i == 1 : i--;
                        });
                      },
                      child: Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.all(5),
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          boxShadow: [
                            BoxShadow(
                                spreadRadius: 1,
                                blurRadius: 1,
                                color: Colors.green),
                          ],
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Icon(
                          Icons.remove,
                          size: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.all(5),
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        boxShadow: [
                          BoxShadow(
                              spreadRadius: 1,
                              blurRadius: 1,
                              color: Colors.green),
                        ],
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Text(
                        "${i.toInt()}",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          i++;
                        });
                      },
                      child: Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.all(5),
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          boxShadow: [
                            BoxShadow(
                                spreadRadius: 1,
                                blurRadius: 1,
                                color: Colors.green),
                          ],
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Icon(
                          Icons.add,
                          size: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                  ],
                ),
              ),

              //2

              SizedBox(
                height: 30,
              ),
              Container(
                height: 100,
                width: 600,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 8,
                      ),
                    ]),
                child: Center(
                  child: Text(
                    vegetables.name.toString(),
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),

              //3

              SizedBox(
                height: 30,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Container(
                    //   height: 600,
                    //   width: 600,
                    //   decoration: BoxDecoration(
                    //       color: Colors.white,
                    //       borderRadius: BorderRadius.circular(15),
                    //       boxShadow: [
                    //         BoxShadow(
                    //           color: Colors.grey,
                    //           blurRadius: 8,
                    //         ),
                    //       ]),
                    //   child: Padding(
                    //     padding: const EdgeInsets.all(15),
                    //     child: Text(
                    //       "Rs.${vegetables.price.toString()}",
                    //       style: TextStyle(
                    //         fontSize: 25,
                    //         fontWeight: FontWeight.w500,
                    //         color: Colors.grey.shade400,
                    //       ),
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
              ),

              Column(
                children: [
                  Text(
                    "Product Details",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 500,
                    width: 600,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 8,
                          ),
                        ]),
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Text(
                        vegetables.detail.toString(),
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey.shade400,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 60,
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, 'billprint_page');
                        double subtotal =
                            double.parse(vegetables.price as String) * i;
                        Bill b = Bill(
                            name: vegetables.name,
                            image: vegetables.image,
                            detail: vegetables.detail,
                            price: double.parse(vegetables.price as String),
                            quanty: double.parse(vegetables.quanty as String),
                            subtotal: subtotal);
                        setState(() {
                          Globals.vegetables.add(b);
                        });
                      },
                      child: Text(
                        "Add To Cart",
                        style: TextStyle(
                          color: Colors.green,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
