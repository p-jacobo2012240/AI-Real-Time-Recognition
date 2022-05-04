import 'package:flutter/material.dart';
import 'package:ia_recognition/constants.dart';
import 'package:ia_recognition/screens/home/components/header_app.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => new _BodyState();
}

class _BodyState extends State<Body> {
  String viewType = "Home";

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Header(size: size),
          Container(height: kDefaultDivider), // divider
          Container(height: kDefaultDivider), // divider
          (viewType == "Home")
              ? SizedBox(
                  child: Center(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: kPrimaryColor),
                    child: const Text("Iniciar reconocimiento",
                        style: TextStyle(color: Colors.white, fontSize: 22)),
                    onPressed: executeChange,
                  ),
                ))
              : Center(
                  child: Container(child: Text("Hello there")),
                )
        ],
      ),
    );
  }

  executeChange() {
    setState(() {
      if (viewType == "Home") {
        viewType = "ProcessIA";
      } else {
        viewType = "Home";
      }
    });
  }
}
