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
        build: (context) => pw.Column(
          children: [
            pw.Row(
              children: [
                pw.Container(
                  alignment: pw.Alignment.center,
                  margin: pw.EdgeInsets.all(10),
                  height: 50,
                  width: 600,
                  color: PdfColors.green,
                  child: pw.Text(
                    "Invoice Generator",
                    style: pw.TextStyle(
                      color: PdfColors.white,
                      fontSize: 25,
                    ),
                  ),
                ),
              ],
            ),
            // pw.Column(
            //   children: [
            //     pw.Container(
            //       alignment: pw.Alignment.centerLeft,
            //       margin: pw.EdgeInsets.all(10),
            //       height: 100,
            //       width: 350,
            //       child: pw.Column(
            //         children: [
            //           pw.RichText(
            //             text: pw.TextSpan(
            //               children: [
            //                 pw.TextSpan(
            //                   text: "Invoice : ",
            //                   style: pw.TextStyle(
            //                     fontWeight: pw.FontWeight.bold,
            //                     fontSize: 18,
            //                   ),
            //                 ),
            //                 pw.TextSpan(
            //                   text: "\nDate : ",
            //                   style: pw.TextStyle(
            //                     fontWeight: pw.FontWeight.bold,
            //                     fontSize: 18,
            //                   ),
            //                 ),
            //                 pw.TextSpan(
            //                   text: "26 April,2023 : ",
            //                   style: pw.TextStyle(
            //                     fontSize: 18,
            //                   ),
            //                 ),
            //                 pw.TextSpan(
            //                   text: "\nPayment Last Date : ",
            //                   style: pw.TextStyle(
            //                     fontWeight: pw.FontWeight.bold,
            //                     fontSize: 18,
            //                   ),
            //                 ),
            //               ],
            //             ),
            //           ),
            //         ],
            //       ),
            //     ),
            //     pw.Container(
            //       alignment: pw.Alignment.center,
            //       height: 120,
            //       width: 250,
            //       child: pw.Column(
            //         children: [
            //           pw.RichText(
            //             text: pw.TextSpan(
            //               children: [
            //                 pw.TextSpan(
            //                   text: "Receiver",
            //                   style: pw.TextStyle(
            //                     fontWeight: pw.FontWeight.bold,
            //                     fontSize: 18,
            //                   ),
            //                 ),
            //                 pw.TextSpan(
            //                   text: "\nBD Desai",
            //                   style: pw.TextStyle(
            //                     fontSize: 18,
            //                   ),
            //                 ),
            //                 pw.TextSpan(
            //                   text: "\nVillion Shop",
            //                   style: pw.TextStyle(
            //                     fontSize: 18,
            //                   ),
            //                 ),
            //                 pw.TextSpan(
            //                   text: "\nIndia",
            //                   style: pw.TextStyle(
            //                     fontSize: 18,
            //                   ),
            //                 ),
            //               ],
            //             ),
            //           ),
            //         ],
            //       ),
            //     ),
            //   ],
            // ),
            pw.Container(
              alignment: pw.Alignment.centerLeft,
              margin: pw.EdgeInsets.only(top: 5),
              height: 30,
              width: 580,
              child: pw.Text(
                "Contect number : +91 8511* *****",
                style: pw.TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
            pw.Container(
              margin: pw.EdgeInsets.only(top: 5),
              alignment: pw.Alignment.centerLeft,
              height: 30,
              width: 580,
              child: pw.Text(
                "7951bonikadesai@gmail.com",
                style: pw.TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
            pw.Container(
              margin: pw.EdgeInsets.only(top: 5),
              height: 30,
              width: 600,
              color: PdfColors.green,
              child: pw.Row(
                mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                children: [
                  pw.Expanded(
                    flex: 2,
                    child: pw.Text(
                      "Item Description",
                      style: pw.TextStyle(
                        color: PdfColors.white,
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
                        color: PdfColors.white,
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
                        color: PdfColors.white,
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
                        color: PdfColors.white,
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
              width: 600,
              color: PdfColors.green400,
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
                                  color: PdfColors.white,
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
                                "${Globals.vegetables[index].quanty} KG",
                                style: pw.TextStyle(
                                  color: PdfColors.white,
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
                                "${Globals.vegetables[index].price!.toInt()}",
                                style: pw.TextStyle(
                                  color: PdfColors.white,
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
                                  color: PdfColors.white,
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
              width: 600,
              color: PdfColors.green200,
              child: pw.Row(
                mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                children: [
                  pw.Expanded(
                    flex: 1,
                    child: pw.Container(
                      height: 30,
                      alignment: pw.Alignment.center,
                      child: pw.Text(
                        "Total",
                        style: pw.TextStyle(
                          color: PdfColors.white,
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
                          color: PdfColors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            pw.Container(
              height: 30,
              width: 600,
              color: PdfColors.green200,
              child: pw.Row(
                mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                children: [
                  pw.Expanded(
                    flex: 1,
                    child: pw.Container(
                      height: 30,
                      alignment: pw.Alignment.center,
                      child: pw.Text(
                        "Tax(18%)",
                        style: pw.TextStyle(
                          color: PdfColors.white,
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
                        style: pw.TextStyle(
                          color: PdfColors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            pw.Container(
              height: 30,
              width: 600,
              color: PdfColors.green200,
              child: pw.Row(
                mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
                children: [
                  pw.Expanded(
                    flex: 1,
                    child: pw.Container(
                      height: 30,
                      alignment: pw.Alignment.center,
                      child: pw.Text(
                        "Total",
                        style: pw.TextStyle(
                          color: PdfColors.black,
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
                        "${((double.parse(Globals.Total())) + ((double.parse(Globals.Total()) * 18) / 100))} Rs",
                        style: pw.TextStyle(
                          color: PdfColors.black,
                          fontSize: 20,
                          fontWeight: pw.FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
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
