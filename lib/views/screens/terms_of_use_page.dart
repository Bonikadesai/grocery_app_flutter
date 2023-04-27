import 'package:flutter/material.dart';

class TermsofUsePage extends StatefulWidget {
  const TermsofUsePage({Key? key}) : super(key: key);

  @override
  State<TermsofUsePage> createState() => _TermsofUsePageState();
}

class _TermsofUsePageState extends State<TermsofUsePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Terms of Use",
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Center(
            child: SingleChildScrollView(
              child: RichText(
                text: TextSpan(
                  text: "Privacy & Policy",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                  children: [
                    //privacy & policy
                    TextSpan(
                      text:
                          "\n\nWELCOME TO ALL SEASONS GROCERY, LLC AND THANK YOU"
                          "FOR REGISTERING WITH US! IT IS IMPORTANT THAT YOU REVIEW THIS AGREEMENT B"
                          "ECAUSE, BY ACCESSING THIS WEBSITE, BY PLACING AN ORDER WITH US BY TELEPHONE,"
                          "EMAIL, FAX, OR THROUGH THIS WEBSITE, YOU ARE AGREEING TO THE TERMS AND CONDITIONS"
                          "THAT GOVERN THE USE OF THE SITE AND THE TERMS UPON WHICH WE AGREE TO DELIVER TO YOU.",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                    ),
                    TextSpan(
                      text:
                          "\n\nBy placing an order with us by telephone, fax, email, or online, you "
                          "agree to the terms of this Agreement (the “Agreement”) which shall cover the terms of"
                          " our deliveries to you and your use of our website. This Agreement is between you and "
                          "All Seasons Grocery, LLC (the “Company” or “All Seasons Grocery”) that states the terms"
                          " and conditions under which you may use the Site and receive deliveries from us. "
                          "All Seasons Grocery is the owner of the following trademarks: All Seasons Grocery, "
                          "www.allseasonsgrocery.com, and the All Seasons Grocery logo. This Agreement is binding "
                          "on you whether you purchase from us via the telephone, email, fax, or our website.",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    // our delivery service
                    TextSpan(
                      text: "\n\nOur Delivary Service",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text:
                          "\n\nWhen you place an order, we use all reasonable efforts to deliver to "
                          "you at the time of your choosing or by 5:00 pm on the day of your arrival. "
                          "Once you place your order by telephone, fax, email, or online, we will act as "
                          "bailee for the ordered products. You can modify an existing order at any time up "
                          "until the order leaves the store by calling our customer service number at "
                          "435-655-5071 or 435-655-1914. Please note that we reserve the right to refuse service "
                          "to anyone. We reserve the right to change the cost of deliveries and/or our delivery "
                          "fees at any time.",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    //price and AVAILABILITY
                    TextSpan(
                      text: "\n\nPrice and Availability",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text:
                          "\n\nFrom time to time, products you order may be unavailable. "
                          "If we are unable to fulfill your entire order, we will make every "
                          "reasonable effort to substitute the closest product. We do not set the "
                          "prices for the items you select on your grocery list. We pay the prices "
                          "that each individual store has already set.\n\nTo receive delivery, you do "
                          "not need to be present to receive your order from our driver. "
                          "In the case of bad weather or unforeseen delivery complications, deliveries may"
                          " be delayed. We will make every effort to get your groceries to you by 5:00 pm "
                          "on the date of your arrival.\n\nYour order will arrive with an invoice that "
                          "will list all of the items you have received and were billed for. If something "
                          "is missing from your order, please call us so that we can do everything reasonable"
                          " in our power to ensure your satisfaction.In the case where you fail to pay for "
                          "the products ordered, you agree to forfeit to the Company any right, title, or"
                          " interest you may have in the products.\n\nProduct information contained on the website or "
                          "in our advertisements is offered as a convenience and should not be deemed as accurate."
                          " Information contained on the website or in our advertisements should not be used by "
                          "you to evaluate ingredient information, nutritional values, or potential food allergies."
                          " The Company assumes no responsibility for such information.\n\nOur drivers are allowed "
                          "to accept tips. Customers are under no obligation to tip drivers but have the option "
                          "of doing so at their discretion.\n\n",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    //payment
                    TextSpan(
                      text: "Payment",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text:
                          "\n\nWe accept only credit/debit cards.  In the event your card is declined, we "
                          "reserve the right to collect funds for any uncollected transactions owed us should a "
                          "payment made via credit card be declined. If you fail to pay any fees or charges when "
                          "due, we may charge such amount directly to the credit card identified in your Customer "
                          "Account Information and we may suspend or terminate your access to our Service. You shall "
                          "be responsible and liable for any fees, including but not limited to attorney’s fees and "
                          "collection costs, that we may incur in our efforts to collect any unpaid balances from you."
                          "From time to time, we may permit you to order and receive products from businesses that we "
                          "don’t use on a regular basis. In such instances, we act only as the link between you and "
                          "such businesses. The purchase, payment, warranty, guaranty, delivery, maintenance, and all "
                          "other matters concerning the merchandise, services, or information ordered or received from "
                          "such businesses are covered by their customer agreement and policies and solely between you "
                          "and such businesses. We make no representations or warranties of any kind, express or "
                          "implied, regarding the merchandise received from these businesses and the fact that we make "
                          "such products available should not be construed as an endorsement of these businesses or the"
                          " products they provide.",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
