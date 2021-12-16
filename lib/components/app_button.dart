import 'package:flutter/material.dart';

Widget appButton(String text, String stopwatch, Function onPressed, double widthButton, IconData iconData, bool isStop, bool isSelect) {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          padding: EdgeInsets.only(
            left: 8,
          ),
          width: widthButton,
          child: TextButton(
            style: TextButton.styleFrom(
                backgroundColor: isStop ? Colors.red : (isSelect ? Colors.green : Colors.teal),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(220)),
                )),
            onPressed: () => onPressed(),
            child: Row(children: [
              Container(
                width: 30,
                child: Icon(
                  iconData,
                  color: Colors.white,
                ),
              ),
              Text(
                  text,
                  style: TextStyle(color: Colors.white, fontSize: 10),
                ),
            ],

          ),
        ),
        ),
        Text(
          stopwatch,
          style: TextStyle(fontSize: 14),
        )
      ],
    // ),
  );
}
