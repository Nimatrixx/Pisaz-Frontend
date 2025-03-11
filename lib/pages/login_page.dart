import 'package:flutter/material.dart';
import 'package:pisaz/components/custom_button.dart';
import 'package:pisaz/components/custom_text_field.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text(
                  "ورود به پیساز",
                  style: TextStyle(fontSize: 25),
                ),
                SizedBox(height: 100.0),
                CustomTextField(
                  width: size.width,
                  padding:
                      EdgeInsets.symmetric(horizontal: 30.0, vertical: 8.0),
                  hint: '09xxxxxxxxx',
                  onChanged: (text) {},
                ),
                CustomButton(
                  width: size.width,
                  height: 60.0,
                  padding: const EdgeInsets.symmetric(
                      horizontal: 30.0, vertical: 8.0),
                  onPressed: () {},
                  child: Text('ورود'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
