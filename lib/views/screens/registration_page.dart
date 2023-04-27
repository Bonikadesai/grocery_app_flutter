import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({Key? key}) : super(key: key);

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Stack(children: [
        Container(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 75,
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Image.asset(
                      "assets/images/app_logo.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    "Enter Your Mobile Number",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    "We will send you a verification code",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        color: Colors.grey.shade500),
                  ),
                ),
                SizedBox(
                  height: 64,
                ),
                Container(
                  child: TextField(
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(
                            40,
                          ),
                        ),
                        hintText: "Enter your number",
                        hintStyle: TextStyle(
                            fontSize: 24,
                            color: Color(0xffE0E0E0),
                            fontWeight: FontWeight.bold),
                        prefix: Text(
                          "+91",
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      )),
                )
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 60,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'home_page');
                  },
                  child: Text(
                    "Continue",
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                  child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: "By clicking on “Continue” you are agreeing to our ",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Color(0xffA9A9AA),
                      fontSize: 12),
                  children: [
                    TextSpan(
                      recognizer: LongPressGestureRecognizer()
                        ..onLongPress = () => Navigator.of(context)
                            .pushNamed('terms_of_use_page'),
                      text: "terms of use",
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontWeight: FontWeight.w600,
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
              )),
            ],
          ),
        )
      ]),
    );
  }
}
