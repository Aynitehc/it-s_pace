import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget info_card(String title, String info) {
  return Expanded(
    child: Container(
      margin: EdgeInsets.all(26.0),
      padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 26.0),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 22, 148, 137).withOpacity(0.8),
        borderRadius: BorderRadius.circular(16.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black54,
            blurRadius: 8.0,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 42.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontFamily: 'Cursive',
            ),
          ),
          SizedBox(height: 7.0),
          Text(
            info,
            style: TextStyle(
              fontSize: 42.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontFamily: 'Cursive',
            ),
          ),
        ],
      ),
    ),
  );
}
