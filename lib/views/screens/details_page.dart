import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  String? name;
  String? image;
  double? price;
  String? detail;
  double? quanty;
  addtocart_page(
      {Key? key,
      required this.name,
      required this.image,
      required this.price,
      required this.detail,
      required this.quanty}) {
    name == name;
    image == image;
    price == price;
    detail == detail;
    quanty == quanty;
  }

  DetailsPage({Key? key}) : super(key: key);

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  double i = 1;
  @override
  Widget build(BuildContext context) {
    Map vegetables = ModalRoute.of(context)!.settings.arguments as Map;
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
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              //1

              Container(
                alignment: Alignment.centerRight,
                height: 450,
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
                child: Image.asset(
                  vegetables['img2'],
                  height: 450,
                  width: 600,
                  fit: BoxFit.contain,
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
                    vegetables['Name'],
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 600,
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
                        "Rs.${vegetables['price']!.toInt()}",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey.shade400,
                        ),
                      ),
                    ),
                  ),
                  Row(
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
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                            color: Colors.green.shade700,
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
                            size: 15,
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        margin: EdgeInsets.all(5),
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                          color: Colors.green.shade700,
                          boxShadow: [
                            BoxShadow(
                                spreadRadius: 1,
                                blurRadius: 1,
                                color: Colors.green),
                          ],
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Text("${i.toInt()}"),
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
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                            color: Colors.green.shade700,
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
                            size: 15,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                ],
              ),
              Divider(
                thickness: 1,
                color: Colors.grey,
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                height: 30,
                width: 380,
                child: Text(
                  "Product Details",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
              Container(
                height: 600,
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
                    vegetables['desc'],
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey.shade400,
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  double subtotal = widget.price! * i;
                  Bill b = Bill(
                      name: widget.name,
                      image: widget.image,
                      detail: widget.detail,
                      price: widget.price,
                      quanty: widget.quanty,
                      subtotal: subtotal);
                  setState(() {
                    vegetables.addAll(b);
                  });
                },
              ),
              // SizedBox(
              //   height: 30,
              // ),
              // Container(
              //   height: 60,
              //   width: double.infinity,
              //   child: ElevatedButton(
              //     onPressed: () {
              //       Navigator.pushNamed(context, 'home_page');
              //     },
              //     child: Text(
              //       "Add to cart",
              //       style: TextStyle(
              //         color: Colors.green,
              //         fontSize: 18,
              //       ),
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
