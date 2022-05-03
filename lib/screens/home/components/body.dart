import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ia_recognition/constants.dart';
import 'package:ia_recognition/screens/home/components/header_app.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Header(size: size),
          Container(height: kDefaultDivider), // divider
          SizedBox(
            height: 24,
            child: Stack(
              children: const <Widget>[
                Text("Iniciar reconocimiento",
                    style: TextStyle(color: kPrimaryColor, fontSize: 22))
              ],
            ),
          ),
          Container(height: kDefaultDivider), // divider
          SizedBox(
              child: Center(
            child: Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                  border: Border.all(color: kPrimaryColor),
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.circular(10.0)),
              child: const Text("foo"),
            ),
          ))
        ],
      ),
    );
  }
}
