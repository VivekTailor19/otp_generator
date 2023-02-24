import 'dart:math';

import 'package:flutter/material.dart';

class OTP_Generator extends StatefulWidget {
  const OTP_Generator({Key? key}) : super(key: key);

  @override
  State<OTP_Generator> createState() => _OTP_GeneratorState();
}
TextEditingController len = TextEditingController();
int number = 0;
List list = [];
int? a;

String output = "";

String value = "";
void clean()
{
  len.clear();
}

class _OTP_GeneratorState extends State<OTP_Generator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff15172B),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "OTP Generator",
              style: TextStyle(fontSize: 45, color: Color(0xffF6DB87)),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 55.0),
              child: TextField
                (
                controller: len ,
                  style: TextStyle(color: Color(0xffFCF6BA),fontSize: 20),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "Enter OTP Length.",hintStyle: TextStyle(color: Color(0xffFCF6BA)),
                    focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color:Color(0xffFCF6BA) )),
                    enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color:Color(0xffFCF6BA) ))

                  ),
                ),
            ),

            SizedBox(
              height: 10,
            ),
            GestureDetector(onTap: () {
              number =  int.parse(len.text);
              setState(() {

                for(int i= 0 ; i<number ;i++)
                  {
                  Random rand = Random();
                  a = rand.nextInt(10);

                  list.add(a);
                  }
                  output = list.join() ;
                   list = [] ;

                print(list);
              });
            },
              child: Container(
                height: 60,
                width: 300,
                alignment: Alignment.center,
                child: Text(
                  "Generate OTP",
                  style: TextStyle(fontSize: 25, color: Color(0xff15172B)),
                ),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xffFFE8B8), Color(0xffF6DB87)],
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
              ),
            ), //Generate OTP
            SizedBox(
              height: 20,
            ),
            Container(
              height: 80,
              width: 400,
              alignment: Alignment.center,
              child: Text(
                "$output",
                style: TextStyle(letterSpacing: 5 ,fontSize: 25, color: Color(0xff15172B)),
              ),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xffFFE8B8), Color(0xffF6DB87)],
                ),
                borderRadius: BorderRadius.all(Radius.circular(30)),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  clean();
                  //number = 0;
                  output = "";

                });
              },
              child: Container(
                height: 40,
                width: 150,
                alignment: Alignment.center,
                child: Text(
                  "Reset",
                  style: TextStyle(fontSize: 25, color: Color(0xff15172B)),
                ),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xffFFE8B8), Color(0xffF6DB87)],
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


/*
number = 1;
1 digit


number = 4 ;

4 digit

number 10;

10 digit




* */