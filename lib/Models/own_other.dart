import 'package:flutter/material.dart';

class TwoButtons extends StatelessWidget {

  final String? accountInfo;
  final Image? image;
  final Color? color;

  const TwoButtons({Key? key,this.accountInfo, this.image,this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: color,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade400,
            spreadRadius: 1,
            offset: Offset(5, 10),
            blurRadius: 15,
          ),
        ]
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
              height: 60,
              child: image),
          RichText(
              text: TextSpan(
                text: accountInfo,
                style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black87),
              )
          ),
        ],
      ),
    );
  }
}

