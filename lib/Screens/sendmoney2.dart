import 'package:flutter/material.dart';


import '../Models/own_other.dart';

class SendMoney2 extends StatelessWidget {
  const SendMoney2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
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
              SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TwoButtons(
                    color: Colors.purple.shade100,
                    image: Image.asset('lib/icons/down-arrow.png'),
                    accountInfo: '      To your\n Own account',
                  ),
                  TwoButtons(
                    color: Colors.purple.shade100,
                    image: Image.asset('lib/icons/up-arrow.png'),
                    accountInfo: '      To other\n Bank account',
                  ),
                ],
              ),
              SizedBox(height: 30,),
              Container(
                height: 150,
                width: 350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.blue.shade900
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                  children: [
                    Text('Send to your mobile contact',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 15),),

                    Container(
                      width: 300,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: TextField(
                        onTap: (){},
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(width: 20),
                            gapPadding: 100
                          ),
                          hintText: 'Enter name or mobile number',
                          suffixIcon: Icon(Icons.search_rounded)
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40,),
              ListTile(
                leading: Container(
                  height: 70,
                  width: 56,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                    image: DecorationImage(
                      image: AssetImage('lib/images/mozammel.jpg')
                    )
                  ),
                ),
                title: const Text(
                  'Mota Mama',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                ),
                subtitle: const Text(' 01687849526',style: TextStyle(fontSize: 15),),
                trailing: const Icon(Icons.arrow_forward_ios_outlined),
              ),
              SizedBox(height: 20,),
              ListTile(
                leading: Container(
                  height: 70,
                  width: 56,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                      image: DecorationImage(
                          image: AssetImage('lib/images/mozammel.jpg')
                      )
                  ),
                ),
                title: const Text(
                  'Mota Mama',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                ),
                subtitle: const Text(' 01687849526',style: TextStyle(fontSize: 15),),
                trailing: const Icon(Icons.arrow_forward_ios_outlined),
              ),
              SizedBox(height: 20,),
              ListTile(
                leading: Container(
                  height: 70,
                  width: 56,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                      image: DecorationImage(
                          image: AssetImage('lib/images/mozammel.jpg')
                      )
                  ),
                ),
                title: const Text(
                  'Mota Mama',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                ),
                subtitle: const Text(' 01687849526',style: TextStyle(fontSize: 15),),
                trailing: const Icon(Icons.arrow_forward_ios_outlined),
              ),
              SizedBox(height: 20,),
              ListTile(
                leading: Container(
                  height: 70,
                  width: 56,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                      image: DecorationImage(
                          image: AssetImage('lib/images/mozammel.jpg')
                      )
                  ),
                ),
                title: const Text(
                  'Mota Mama',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                ),
                subtitle: const Text(' 01687849526',style: TextStyle(fontSize: 15),),
                trailing: const Icon(Icons.arrow_forward_ios_outlined),
              ),
              SizedBox(height: 20,),
              ListTile(
                leading: Container(
                  height: 70,
                  width: 56,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                      image: DecorationImage(
                          image: AssetImage('lib/images/mozammel.jpg')
                      )
                  ),
                ),
                title: const Text(
                  'Mota Mama',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                ),
                subtitle: const Text(' 01687849526',style: TextStyle(fontSize: 15),),
                trailing: const Icon(Icons.arrow_forward_ios_outlined),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

