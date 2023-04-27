import 'package:flutter/material.dart';
import 'package:grocery_app/modals/globals.dart';

class FruitPage extends StatefulWidget {
  const FruitPage({Key? key}) : super(key: key);

  @override
  State<FruitPage> createState() => _FruitPageState();
}

class _FruitPageState extends State<FruitPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Fruits"),
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
        children: fruits.map((e) {
          e['fruit'];
          return GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed('details_page', arguments: e);
            },
            child: Container(
              child: Column(
                children: [
                  Padding(
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
                      child: Padding(
                        padding: EdgeInsets.all(25.0),
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
