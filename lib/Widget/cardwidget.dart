import 'package:flutter/material.dart';

class SelectCard extends StatefulWidget {
  final String number;
  // final Color color;
  //  final TextStyle numberstyle;
  BoxConstraints constraints;
  // final Function _callback;

  SelectCard(this.constraints, this.number);

  @override
  _SelectCardState createState() => _SelectCardState();
}

class _SelectCardState extends State<SelectCard> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.constraints.maxWidth * 0.18,
      height: widget.constraints.maxHeight * 0.10,
      decoration: new BoxDecoration(borderRadius: BorderRadius.circular(4)),
      child: Card(
        child: ListTile(
          contentPadding: EdgeInsets.only(
              left: widget.constraints.maxWidth * 0.06,
              top: widget.constraints.maxHeight * 0.02,
              bottom: widget.constraints.maxHeight * 0.02),
          tileColor: Color(0xFFE0F7FA),
          title: Column(
            children: [
              Row(
                children: [
                  Flexible(
                    child: Text(widget.number),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
