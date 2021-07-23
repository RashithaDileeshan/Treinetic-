import 'package:flutter/material.dart';
import 'package:fluttertest/Utility/colors.dart';


class FindButton extends StatelessWidget {
  String title;
  BoxConstraints constraints;
  final Function _callback;
  FindButton(this.constraints, this.title, this._callback);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: constraints.maxHeight / 12,
        width: constraints.maxWidth * 0.90,
        decoration: BoxDecoration(
          color: CustomColors.perrywinkle,
          border: Border.all(color: CustomColors.perrywinkle),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
                child: Text(title,
                    style: TextStyle(
                      color: CustomColors.whiteTwo,
                      fontWeight: FontWeight.normal,
                      fontFamily: "Poppins",
                      fontStyle: FontStyle.normal,
                      fontSize: constraints.maxWidth / 24,
                    )))
          ],
        ),
      ),
    );
  }
}
