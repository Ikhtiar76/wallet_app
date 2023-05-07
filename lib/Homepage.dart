import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'Models/Bottombar.dart';
import 'Models/cards.dart';
import 'Models/3buttons.dart';
import 'Screens/SendMoney.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {


  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // appBar in body
                  Row(
                    children: [
                      Text(
                        'My',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 26),
                      ),
                      Text(
                        ' Cards',
                        style: TextStyle(fontSize: 26),
                      ),
                    ],
                  ),

                  //plus button
                  Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[400],
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.add,
                        size: 26,
                      )),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            // cards
            Container(
              height: 230,
              child: PageView(
                controller: _controller,
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                children: [
                  MyCards(
                    color: Colors.blue.shade900,
                    amount: '5,250.20',
                    date: '10/24',
                    number: '****3456',
                  ),
                  MyCards(
                    color: Colors.blueAccent.shade400,
                    amount: '4,250.20',
                    date: '10/24',
                    number: '****5436',
                  ),
                  MyCards(
                    color: Colors.purple.shade900,
                    amount: '7,250.20',
                    date: '10/24',
                    number: '****3666',
                  ),
                  MyCards(
                    color: Colors.purpleAccent.shade400,
                    amount: '9,250.20',
                    date: '10/24',
                    number: '****3786',
                  ),
                  MyCards(
                    color: Colors.blueGrey,
                    amount: '8,250.20',
                    date: '10/24',
                    number: '****4456',
                  ),
                ],
              ),
            ),
            SmoothPageIndicator(
              controller: _controller,
              count: 5,
              effect: ExpandingDotsEffect(
                dotHeight: 10,
                dotWidth: 10,
                activeDotColor: Colors.grey.shade800,
              ),
            ),
            SizedBox(
              height: 60,
            ),

            // 3 buttons = send+pay+bills
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: (){
                    setState(() {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return SendMoney();
                      },));
                    });
                  },
                  child: ThreeButton(
                    image: Image.asset('lib/icons/share.png'),
                    name: 'Send',
                  ),
                ),
                ThreeButton(
                  image: Image.asset('lib/icons/pay.png'),
                  name: 'Pay',
                ),
                ThreeButton(
                  image: Image.asset('lib/icons/bills.png'),
                  name: 'Bills',
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            ListTile(
              leading: Container(
                height: 70,
                width: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.indigo.shade200,
                ),
                child: Center(
                  child: SizedBox(
                    height: 50,
                    width: 50,
                    child: Image.asset('lib/icons/statistics.png'),
                  ),
                ),
              ),
              title: Text(
                'Statistics',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
              ),
              subtitle: Text('Payments and Income'),
              trailing: Icon(Icons.arrow_forward_ios_outlined),
            ),
            SizedBox(
              height: 15,
            ),
            ListTile(
              leading: Container(
                height: 70,
                width: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.indigo.shade200,
                ),
                child: Center(
                  child: SizedBox(
                    height: 50,
                    width: 50,
                    child: Image.asset('lib/icons/transaction.png'),
                  ),
                ),
              ),
              title: Text(
                'Transaction',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
              ),
              subtitle: Text('Transaction History'),
              trailing: Icon(Icons.arrow_forward_ios_outlined),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.monitor_heart,
          size: 30,
        ),
        elevation: 0,
        backgroundColor: Colors.pinkAccent.shade100,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomBar(),
    );
  }
}
