import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {

  bool tap = false;


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                IconButton(
                    onPressed: () {
                      setState(() {
                        tap = !tap;
                      });
                    },
                    icon: tap ? (Icon(
                      Icons.home,
                      size: 30,
                      color: Colors.grey,
                    )):Icon(
                      Icons.home,
                      size: 30,
                      color: Colors.pinkAccent.shade100,
                    )),
                Text(
                  'Home',
                  style: tap? TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.grey):
                  TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.pinkAccent.shade100),
                )
              ],
            ),
            Column(
              children: [
                IconButton(
                    onPressed: () {
                      setState(() {
                        tap = !tap;
                      });
                    },
                    icon: tap?(Icon(
                      Icons.settings_sharp,
                      size: 30,
                      color: Colors.pinkAccent.shade100,
                    )):(Icon(
                      Icons.settings_sharp,
                      size: 30,
                      color: Colors.grey,
                    ))),
                Text(
                  'Settings',
                  style: tap? TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.pinkAccent.shade100):TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.grey),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

