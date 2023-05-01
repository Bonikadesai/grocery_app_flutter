import 'package:flutter/material.dart';
import 'package:grocery_app/modals/globals.dart';

import '../../utils/model.dart';

class GroceryPage extends StatefulWidget {
  const GroceryPage({Key? key}) : super(key: key);

  @override
  State<GroceryPage> createState() => _GroceryPageState();
}

class _GroceryPageState extends State<GroceryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Grocery"),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        actions: [
          Icon(Icons.shopping_cart),
          SizedBox(
            width: 20,
          ),
        ],
      ),
      body: GridView.extent(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.all(5),
        maxCrossAxisExtent: 200,
        mainAxisSpacing: 20,
        crossAxisSpacing: 1,
        children: grocery.map((e) {
          e['Grocery'];
          return GestureDetector(
            onTap: () {
              product p1 = product(
                  name: e['Name'],
                  image: e['img2'],
                  price: e['price'].toString(),
                  detail: e['desc'],
                  quanty: e['quality']);
              Navigator.of(context).pushNamed('details_page', arguments: p1);
            },
            child: Container(
              child: Column(
                children: [
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(5),
                      child: Container(
                        height: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.shade400,
                              blurRadius: 5,
                            ),
                          ],
                          image: DecorationImage(
                            image: AssetImage(e['img']),
                            fit: BoxFit.contain,
                          ),
                        ),
                        alignment: Alignment.bottomLeft,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(5.0),
                      child: Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: e['Name'],
                              style: TextStyle(fontSize: 18),
                            ),
                            TextSpan(
                              text: "\n₹ ${e['price']}",
                              style: TextStyle(
                                  fontSize: 15, color: Colors.grey.shade500),
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
        }).toList(),
      ),
    );
  }
}
