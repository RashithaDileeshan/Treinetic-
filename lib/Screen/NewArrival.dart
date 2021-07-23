import 'package:flutter/material.dart';
import 'package:fluttertest/Screen/Store.dart';
import 'package:fluttertest/Utility/colors.dart';
import 'package:fluttertest/Utility/styles.dart';
class NewArrival extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (SafeArea(
      child: LayoutBuilder(
        builder: (context, constraints) {
          return (Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              leading: Builder(builder: (BuildContext context) {
                return IconButton(
                  icon: Icon(
                    Icons.menu,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                );
              }),
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
                          height: constraints.maxHeight * 0.1,
                        ),
                      ),
                      Container(
                        child: TextField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.search),
                            filled: true,
                            fillColor: CustomColors.indigoShade,
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                            hintText: "Search Items",
                            hintStyle: TextStyle(
                              color: CustomColors.indigo,
                              fontWeight: FontWeight.normal,
                              fontFamily: "Poppins",
                              fontStyle: FontStyle.normal,
                              fontSize: 16.0,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: constraints.maxHeight * 0.06,
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
                                  Image.asset('assets/images/running_shoes_PNG5816.png',
                                      width: constraints.maxWidth / 1),
                                  Row(children: [
                                    Text("Women running shoes"),
                                  ]),
                                  SizedBox(
                                    height: constraints.maxHeight / 160,
                                  ),
                                  Row(children: [
                                    Text(
                                      "React Escape Run",
                                      style: Styles.headdingStyle,
                                    ),
                                  ]),
                                  SizedBox(
                                    height: constraints.maxHeight / 200,
                                  ),
                                  Row(children: [
                                    Text(
                                      "135",
                                      style: Styles.subStyle,
                                    ),
                                  ]),
                                ],
                              ),
                            ),
                            onTap: () => {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Store()))
                            },
                          ),
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
