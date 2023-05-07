import 'package:flutter/material.dart';

class ThreeButton extends StatelessWidget {

 final String? name;
 final Image? image;


  const ThreeButton({Key? key, this.name, this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 70,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
          ),
          child: Center(
            child: SizedBox(height:35,width: 70,child: image),
          ),
        ),
        SizedBox(height: 8,),
        Text(name!,style: TextStyle(fontSize: 16,color: Colors.grey.shade600,fontWeight: FontWeight.bold),)
      ],
    );
  }
}
