import 'package:flutter/material.dart';

class MyCards extends StatelessWidget {

  final String amount;
  final String number;
  final String date;
  final Color color;

  const MyCards ({Key? key,required this.amount,required this.number,required this.date, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        padding: EdgeInsets.all(20),
        width: 300,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 290),
              child: Text('VISA',style: TextStyle(color: Colors.white,fontSize: 25)),
            ),
            Text('Balance',style: TextStyle(color: Colors.white,fontSize: 15),),
            SizedBox(height: 10,),
            Text('\$' + amount,style: TextStyle(color: Colors.white,fontSize: 30,),),
            SizedBox(height: 35,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('****' + number,style: TextStyle(color: Colors.white,fontSize: 15,),),
                Text(date,style: TextStyle(color: Colors.white,fontSize: 15,),),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
