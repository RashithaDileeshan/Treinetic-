import 'package:flutter/material.dart';
import 'package:fluttertest/Utility/colors.dart';
import 'package:fluttertest/Utility/styles.dart';
import 'package:fluttertest/Widget/cardwidget.dart';
import 'package:fluttertest/Widget/find_button.dart';

class Store extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (SafeArea(
      child: LayoutBuilder(
        builder: (context, constraints) {
          return (Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              leading: IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              actions: <Widget>[
                IconButton(
                  icon: Icon(
                    Icons.favorite,
                    color: Colors.black,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
            body: Center(
              child: SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.only(
                      left: constraints.maxWidth / 15,
                      right: constraints.maxWidth / 15),
                  height: constraints.maxHeight / 1,
                  child: Column(
                    children: [
                      Flexible(
                        child: SizedBox(
                          height: constraints.maxHeight * 0.05,
                        ),
                      ),
                      Column(
                        children: [
                          GestureDetector(
                            child: Container(
                              padding: EdgeInsets.only(
                                  left: constraints.maxWidth / 15,
                                  right: constraints.maxWidth / 15),
                              height: constraints.maxHeight / 2,
                              decoration: BoxDecoration(
                                color: Colors.indigo[50],
                                borderRadius: BorderRadius.circular(18),
                              ),
                              child: Column(
                                children: [
                                  Image.asset(
                                      'assets/images/running_shoes_PNG5816.png',
                                      width: constraints.maxWidth / 1),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: constraints.maxHeight * 0.02,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: constraints.maxWidth * 0.02,
                              ),
                              Text(
                                "Women Running Shoes",
                              ),
                              Flexible(
                                child: SizedBox(
                                  width: constraints.maxWidth * 0.38,
                                ),
                              ),
                              Text("790",
                                  style: TextStyle(
                                      color: const Color(0xFFFF5722),
                                      fontWeight: FontWeight.w700,
                                      fontFamily: "Poppins",
                                      fontStyle: FontStyle.normal,
                                      fontSize: constraints.maxWidth / 16)),
                            ],
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: constraints.maxWidth * 0.02,
                              ),
                              Text(
                                "React Escape Run",
                                style: Styles.headdingStyle,
                              )
                            ],
                          ),
                          SizedBox(
                            height: constraints.maxHeight * 0.02,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: constraints.maxWidth * 0.02,
                              ),
                              Text(
                                "Select Size",
                                style: Styles.sub2,
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SelectCard(
                                constraints,
                                "36",
                              ),
                              SelectCard(
                                constraints,
                                "37",
                              ),
                              SelectCard(
                                constraints,
                                "38",
                              ),
                              SelectCard(
                                constraints,
                                "39",
                              ),
                            ],
                          ),
                          SizedBox(
                            height: constraints.maxHeight * 0.02,
                          ),
                          Column(
                            children: [
                              FindButton(constraints, "Find in store", () {}),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ));
        },
      ),
    ));
  }
}
