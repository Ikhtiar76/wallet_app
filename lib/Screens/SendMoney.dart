import 'package:flutter/material.dart';
import 'package:wallet_app/Models/3buttons.dart';
import 'package:wallet_app/Screens/sendmoney2.dart';

class SendMoney extends StatelessWidget {
  const SendMoney({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Stack(children: [
        SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                leading: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.arrow_back,
                    size: 30,
                    color: Colors.black,
                  ),
                ),
                trailing: SizedBox(
                  height: 30,
                  width: 60,
                  child: Image.asset('lib/icons/menus.png'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 27.0),
                child: Row(
                  children: const [
                    Text(
                      'Send',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                    ),
                    Text(
                      ' Money',
                      style: TextStyle(fontSize: 30),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0),
                child: Text(
                  'Add Your Bank Account',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                child: Container(
                    height: 150,
                    width: 340,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.blue.shade300,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Why to add bank account?',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                            Text(
                              'Without adding your bank',
                              style: TextStyle(fontSize: 13),
                            ),
                            Text(
                              'account, you are not able to',
                              style: TextStyle(fontSize: 13),
                            ),
                            Text(
                              'send money.',
                              style: TextStyle(fontSize: 13),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 10),
                          height: 100,
                          width: 80,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                                image: AssetImage('lib/images/mozammel.jpg'),
                                fit: BoxFit.fill),
                          ),
                        )
                      ],
                    )),
              ),
              const SizedBox(
                height: 45,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ThreeButton(
                    image: Image.asset('lib/icons/citibank.png'),
                    name: 'Citi bank',
                  ),
                  ThreeButton(
                    image: Image.asset('lib/icons/clickbank.png'),
                    name: 'Click bank',
                  ),
                  ThreeButton(
                    image: Image.asset('lib/icons/hsbc.png'),
                    name: 'HSBC bank',
                  ),
                ],
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 500.0),
          child: DraggableScrollableSheet(
            initialChildSize: 0.4,
            expand: true,
            builder: (context, scrollController) => Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20)),
                color: Colors.white70
              ),
              child: ListView(
                controller: scrollController,
                children: [
                  Column(
                    children: const [
                      SizedBox(width: 30,
                        child: Divider(
                          thickness: 4,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(height: 10,),
                      Padding(
                        padding: EdgeInsets.only(right: 220.0),
                        child: Text('Select your Bank',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                      )
                    ],
                  ),
                  SizedBox(height: 15,),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return SendMoney2();
                      },));
                    },
                    child: ListTile(
                      leading: Container(
                        height: 70,
                        width: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white
                        ),
                        child: Center(
                          child: SizedBox(
                            height: 50,
                            width: 50,
                            child: Image.asset('lib/icons/citibank.png'),
                          ),
                        ),
                      ),
                      title: const Text(
                        'Citi Bank',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                      ),
                      subtitle: const Text(' ****2345',style: TextStyle(fontSize: 15),),
                      trailing: const Icon(Icons.arrow_forward_ios_outlined),
                    ),
                  ),
                  ListTile(
                    leading: Container(
                      height: 70,
                      width: 60,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white
                      ),
                      child: Center(
                        child: SizedBox(
                          height: 50,
                          width: 50,
                          child: Image.asset('lib/icons/hsbc.png'),
                        ),
                      ),
                    ),
                    title: const Text(
                      'HSBC Bank',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                    ),
                    subtitle: const Text(' ****5423',style: TextStyle(fontSize: 15),),
                    trailing: const Icon(Icons.arrow_forward_ios_outlined),
                  ),
                  ListTile(
                    leading: Container(
                      height: 70,
                      width: 60,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white
                      ),
                      child: Center(
                        child: SizedBox(
                          height: 50,
                          width: 50,
                          child: Image.asset('lib/icons/clickbank.png'),
                        ),
                      ),
                    ),
                    title: const Text(
                      'Click Bank',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                    ),
                    subtitle: const Text(' ****4352',style: TextStyle(fontSize: 15),),
                    trailing: const Icon(Icons.arrow_forward_ios_outlined),
                  ),
                ],
              )
            ),
          ),
        )
      ]),
    );
  }
}
