import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:grocery_app/modals/globals.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';

class BillPrintPage extends StatefulWidget {
  const BillPrintPage({Key? key}) : super(key: key);

  @override
  State<BillPrintPage> createState() => _BillPrintPageState();
}

class _BillPrintPageState extends State<BillPrintPage> {
  pw.Document pdf = pw.Document();
  double i = 1;
  @override
  void initState() {
    super.initState();
    pdf.addPage(
      pw.Page(
        margin: pw.EdgeInsets.zero,
        build: (context) => pw.Center(
          child: pw.Column(
            children: [
              pw.Row(
                children: [
                  pw.Container(
                    alignment: pw.Alignment.center,
                    margin: pw.EdgeInsets.all(10),
                    height: 50,
                    width: 570,
                    color: PdfColors.green,
                    child: pw.Text(
                      "Invoice Generator",
                      style: pw.TextStyle(
                        fontSize: 25,
                      ),
                    ),
                  ),
                  pw.Row(
                    children: [
                      pw.Container(
                        alignment: pw.Alignment.centerLeft,
                        margin: pw.EdgeInsets.all(10),
                        height: 100,
                        width: 350,
                        child: pw.Column(
                          children: [
                            pw.RichText(
                              text: pw.TextSpan(
                                children: [
                                  pw.TextSpan(
                                    text: "Invoice : ",
                                    style: pw.TextStyle(
                                      fontWeight: pw.FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                                  pw.TextSpan(
                                    text: "\nDate : ",
                                    style: pw.TextStyle(
                                      fontWeight: pw.FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                                  pw.TextSpan(
                                    text: "26 April,2023 : ",
                                    style: pw.TextStyle(
                                      fontSize: 18,
                                    ),
                                  ),
                                  pw.TextSpan(
                                    text: "\nPayment Last Date : ",
                                    style: pw.TextStyle(
                                      fontWeight: pw.FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      pw.Container(
                        alignment: pw.Alignment.center,
                        height: 120,
                        width: 250,
                        child: pw.Column(
                          children: [
                            pw.RichText(
                              text: pw.TextSpan(
                                children: [
                                  pw.TextSpan(
                                    text: "Receiver",
                                    style: pw.TextStyle(
                                      fontWeight: pw.FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                                  pw.TextSpan(
                                    text: "\nBD Desai",
                                    style: pw.TextStyle(
                                      fontSize: 18,
                                    ),
                                  ),
                                  pw.TextSpan(
                                    text: "\nVillion Shop",
                                    style: pw.TextStyle(
                                      fontSize: 18,
                                    ),
                                  ),
                                  pw.TextSpan(
                                    text: "\nIndia",
                                    style: pw.TextStyle(
                                      fontSize: 18,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  pw.Container(
                    alignment: pw.Alignment.centerLeft,
                    margin: pw.EdgeInsets.only(top: 5),
                    height: 30,
                    width: 550,
                    child: pw.Text(
                      "Contect number : +91 7845562349",
                      style: pw.TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                  pw.Container(
                    alignment: pw.Alignment.centerLeft,
                    height: 30,
                    width: 550,
                    child: pw.Text(
                      "bonikadesai7951@gmail.com",
                      style: pw.TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                  pw.Container(
                    margin: pw.EdgeInsets.only(top: 5),
                    height: 30,
                    width: 550,
                    color: PdfColors.green,
                    child: pw.Row(
                      children: [
                        pw.Expanded(
                          flex: 2,
                          child: pw.Text(
                            "Item Description",
                            style: pw.TextStyle(
                              fontSize: 18,
                              fontWeight: pw.FontWeight.bold,
                            ),
                          ),
                        ),
                        pw.Expanded(
                          flex: 1,
                          child: pw.Text(
                            "Quntity",
                            style: pw.TextStyle(
                              fontSize: 18,
                              fontWeight: pw.FontWeight.bold,
                            ),
                          ),
                        ),
                        pw.Expanded(
                          flex: 1,
                          child: pw.Text(
                            "Price",
                            style: pw.TextStyle(
                              fontSize: 18,
                              fontWeight: pw.FontWeight.bold,
                            ),
                          ),
                        ),
                        pw.Expanded(
                          flex: 1,
                          child: pw.Text(
                            "SubTotal",
                            style: pw.TextStyle(
                              fontSize: 18,
                              fontWeight: pw.FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  pw.Container(
                    margin: pw.EdgeInsets.only(top: 5),
                    height: 400,
                    width: 570,
                    color: PdfColors.green,
                    child: pw.ListView.builder(
                        itemBuilder: (context, index) => pw.Row(
                              children: [
                                pw.Expanded(
                                  flex: 2,
                                  child: pw.Container(
                                    height: 30,
                                    alignment: pw.Alignment.centerLeft,
                                    child: pw.Text(
                                      "${Globals.vegetables[index].name}",
                                      style: pw.TextStyle(
                                        fontSize: 16,
                                        fontWeight: pw.FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                                pw.Expanded(
                                  flex: 1,
                                  child: pw.Container(
                                    height: 20,
                                    alignment: pw.Alignment.center,
                                    child: pw.Text(
                                      "${Globals.vegetables[index].quanty}",
                                      style: pw.TextStyle(
                                        fontSize: 18,
                                      ),
                                    ),
                                  ),
                                ),
                                pw.Expanded(
                                  flex: 1,
                                  child: pw.Container(
                                    height: 20,
                                    alignment: pw.Alignment.center,
                                    child: pw.Text(
                                      "${Globals.vegetables[index].price}",
                                      style: pw.TextStyle(
                                        fontSize: 18,
                                      ),
                                    ),
                                  ),
                                ),
                                pw.Expanded(
                                  flex: 1,
                                  child: pw.Container(
                                    height: 20,
                                    alignment: pw.Alignment.center,
                                    child: pw.Text(
                                      "${Globals.vegetables[index].subtotal?.toInt()}",
                                      style: pw.TextStyle(
                                        fontSize: 18,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                        itemCount: Globals.vegetables.length),
                  ),
                  pw.Container(
                    margin: pw.EdgeInsets.only(top: 5),
                    height: 30,
                    width: 550,
                    color: PdfColors.green,
                    child: pw.Row(
                      children: [
                        pw.Expanded(
                          flex: 1,
                          child: pw.Container(
                            height: 30,
                            alignment: pw.Alignment.center,
                            child: pw.Text(
                              "Total",
                              style: pw.TextStyle(
                                fontWeight: pw.FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                        pw.Expanded(
                          flex: 1,
                          child: pw.Container(
                            height: 30,
                            alignment: pw.Alignment.center,
                            child: pw.Text(
                              "${Globals.Total()}",
                              style: pw.TextStyle(
                                fontWeight: pw.FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  pw.Container(
                    margin: pw.EdgeInsets.only(top: 5),
                    height: 30,
                    width: 550,
                    color: PdfColors.green,
                    child: pw.Row(
                      children: [
                        pw.Expanded(
                          flex: 5,
                          child: pw.Container(
                            height: 30,
                            alignment: pw.Alignment.center,
                            child: pw.Text(
                              "Tax(18%)",
                              style: pw.TextStyle(
                                fontWeight: pw.FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                        pw.Expanded(
                          flex: 5,
                          child: pw.Container(
                            height: 30,
                            alignment: pw.Alignment.center,
                            child: pw.Text(
                              "Tax(18%)",
                              style: pw.TextStyle(
                                fontWeight: pw.FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                        pw.Expanded(
                          flex: 1,
                          child: pw.Container(
                            height: 30,
                            alignment: pw.Alignment.center,
                            child: pw.Text(
                              "${((double.parse(Globals.Total()) * 18) / 100)}",
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  pw.Container(
                    margin: pw.EdgeInsets.only(top: 5),
                    height: 30,
                    width: 550,
                    color: PdfColors.green100,
                    child: pw.Row(
                      children: [
                        pw.Expanded(
                          flex: 5,
                          child: pw.Container(
                            height: 30,
                            alignment: pw.Alignment.center,
                            child: pw.Text(
                              "Total",
                              style: pw.TextStyle(
                                fontSize: 20,
                                fontWeight: pw.FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        pw.Expanded(
                          flex: 1,
                          child: pw.Container(
                            height: 30,
                            alignment: pw.Alignment.center,
                            child: pw.Text(
                              "${((double.parse(Globals.Total())) + ((double.parse(Globals.Total()) * 18) / 100))}",
                              style: pw.TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                      ],
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

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Villian"),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed('billprint_page');
            },
            child: Icon(Icons.shopping_cart),
          ),
          SizedBox(
            width: 20,
          ),
        ],
        centerTitle: true,
      ),
      body: (Globals.vegetables.isEmpty)
          ? Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Enter Item",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            )
          : Column(
              children: [
                Expanded(
                  flex: 5,
                  child: Padding(
                    padding: EdgeInsets.all(5),
                    child: ListView.builder(
                        itemCount: Globals.vegetables.length,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: EdgeInsets.all(5),
                            height: 100,
                            width: 200,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  spreadRadius: 1,
                                  blurRadius: 3,
                                  color: Colors.grey,
                                ),
                              ],
                            ),
                            child: Row(
                              children: [
                                Container(
                                  height: 100,
                                  width: 80,
                                  child: Image.asset(
                                      "${Globals.vegetables[index].image}"),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 10,
                                  ),
                                  child: Column(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(
                                          top: 10,
                                        ),
                                        alignment: Alignment.centerLeft,
                                        height: 20,
                                        width: 180,
                                        child: Text(
                                          "${Globals.vegetables[index].name}",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        alignment: Alignment.centerLeft,
                                        height: 20,
                                        width: 180,
                                        child: Text(
                                          "Villian",
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 12,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        alignment: Alignment.centerLeft,
                                        height: 20,
                                        width: 180,
                                        child: Text(
                                          "Rs.${Globals.vegetables[index].price!.toInt()}\t*\t${Globals.vegetables[index].quanty!.toInt()}",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                // Row(
                                //   children: [
                                //     GestureDetector(
                                //       onTap: () {
                                //         setState(() {
                                //           (i <= 1) ? i == 1 : i--;
                                //         });
                                //       },
                                //       child: Container(
                                //         alignment: Alignment.center,
                                //         margin: EdgeInsets.all(3),
                                //         height: 20,
                                //         width: 20,
                                //         decoration: BoxDecoration(
                                //           color: Colors.green,
                                //           boxShadow: [
                                //             BoxShadow(
                                //               spreadRadius: 1,
                                //               blurRadius: 1,
                                //               color: Colors.green,
                                //             ),
                                //           ],
                                //           borderRadius:
                                //               BorderRadius.circular(5),
                                //         ),
                                //         child: Icon(
                                //           Icons.remove,
                                //           size: 20,
                                //           color: Colors.white,
                                //         ),
                                //       ),
                                //     ),
                                //     Container(
                                //       alignment: Alignment.center,
                                //       margin: EdgeInsets.all(5),
                                //       height: 20,
                                //       width: 20,
                                //       decoration: BoxDecoration(
                                //         color: Colors.green,
                                //         boxShadow: [
                                //           BoxShadow(
                                //               spreadRadius: 1,
                                //               blurRadius: 1,
                                //               color: Colors.green.shade700),
                                //         ],
                                //         borderRadius:
                                //             BorderRadius.circular(5),
                                //       ),
                                //       child: Text(
                                //         "${i.toInt()}",
                                //         style: TextStyle(
                                //           color: Colors.white,
                                //           fontSize: 15,
                                //         ),
                                //       ),
                                //     ),
                                //     GestureDetector(
                                //       onTap: () {
                                //         setState(() {
                                //           i++;
                                //         });
                                //       },
                                //       child: Container(
                                //         alignment: Alignment.center,
                                //         margin: EdgeInsets.all(3),
                                //         height: 20,
                                //         width: 20,
                                //         decoration: BoxDecoration(
                                //           color: Colors.green,
                                //           boxShadow: [
                                //             BoxShadow(
                                //               spreadRadius: 1,
                                //               blurRadius: 1,
                                //               color: Colors.green,
                                //             ),
                                //           ],
                                //           borderRadius:
                                //               BorderRadius.circular(5),
                                //         ),
                                //         child: Icon(
                                //           Icons.add,
                                //           size: 20,
                                //           color: Colors.white,
                                //         ),
                                //       ),
                                //     ),
                                //     SizedBox(
                                //       width: 10,
                                //     ),
                                //   ],
                                // ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      Globals.vegetables.removeAt(index);
                                    });
                                  },
                                  child: Container(
                                    margin: EdgeInsets.only(bottom: 10),
                                    height: 40,
                                    width: 40,
                                    alignment: Alignment.topCenter,
                                    child: Icon(
                                      Icons.delete,
                                      size: 25,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        }),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  height: 50,
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 20),
                        child: Text(
                          "Rs.${Globals.Total()}",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () async {
                          Uint8List data = await pdf.save();
                          await Printing.layoutPdf(onLayout: (formate) => data);
                        },
                        child: Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.only(right: 10),
                          height: 50,
                          width: 150,
                          color: Colors.white,
                          child: Text(
                            "PLACE ORDER",
                            style: TextStyle(
                              color: Colors.green,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
    );
  }
}
