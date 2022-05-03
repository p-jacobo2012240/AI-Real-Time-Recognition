import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ia_recognition/constants.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: <Widget>[
        Container(
          height: size.height * 0.2,
          child: Stack(children: <Widget>[
            Container(
              height: size.height * 0.2 - 27,
              decoration: const BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(36),
                      bottomRight: Radius.circular(36))),
            ),
            Positioned(
                bottom: 0,
                left: 80,
                right: 80,
                child: Container(
                    margin: const EdgeInsets.all(10),
                    height: 58,
                    width: 20,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30)),
                    child: Center(
                        child: Image.asset("images/app-base-icon.png")))),
          ]),
        )
      ],
    );
  }
}
