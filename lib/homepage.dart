import 'package:flutter/material.dart';
import 'customwidgets.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff6C00FF),
      body: Column(
        children: [
          const SizedBox(
            height: 60.0,
          ),
          // First area top
          Row(children: [
            const SizedBox(
              width: 20.0,
            ),
            // profile picture
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image.asset('images/logo.jpg',
                    height: 40.0, width: 40, fit: BoxFit.fill),
              ),
            ),
            const SizedBox(
              width: 10.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Howdi, Gylfi!',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Color(0xfffbf8ff),
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  "let's plan your bright future",
                  style: TextStyle(color: Color(0xffb178ff), fontSize: 11),
                ),
              ],
            ),
            const Spacer(),
            const Icon(
              Icons.notifications,
              color: Colors.white,
              size: 30.0,
            ),
            const SizedBox(width: 20)
          ]),
          const SizedBox(height: 20.0),
          Row(
            children: [
              const SizedBox(width: 20.0),
              // second top area
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    '042345-900',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w400,
                      color: Color(0xfffbf8ff),
                    ),
                  ),
                  const SizedBox(height: 5),
                  Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: const Color(0xff7b17ff),
                    ),
                    child: const Text(
                      'Poilce Number ',
                      style: TextStyle(color: Color(0xffdec7ff), fontSize: 14),
                    ),
                  ),
                ],
              ),
              const Spacer(),
              Container(
                padding: const EdgeInsets.only(left: 5),
                height: 40.0,
                width: 40.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.white),
                child: const Icon(
                  Icons.arrow_back_ios,
                  color: Color(0xFF6800FE),
                ),
              ),
              const SizedBox(width: 20.0)
            ],
          ),
          const SizedBox(height: 10),
          // dividing line 
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              '-----------------------------------------------------',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xFF8931FF),
              ),
            ),
          ),
          const SizedBox(height: 10),
          // amount, value, and amount date 
          Row(
            children: [
              const SizedBox(width: 20.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(r'$ 1,040', style: kavdTextstyle),
                  Text('Premium Ammount', style: kavdSubTextstyle)
                ],
              ),
              const Spacer(),
              Column(
                children: const [
                  Text(r'$ 2,689', style: kavdTextstyle),
                  Text('Surrender value', style: kavdSubTextstyle)
                ],
              ),
              const Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: const [
                  Text('13/08/2018', style: kavdTextstyle),
                  Text('Ammount date', style: kavdSubTextstyle)
                ],
              ),
              const SizedBox(width: 20.0)
            ],
          ),
          const SizedBox(height: 15.0),
          // the two horizontal buttons
          Container(
            height: 60,
            margin: const EdgeInsets.symmetric(horizontal: 20),
            padding: const EdgeInsets.symmetric(horizontal: 30),
            decoration: BoxDecoration(
              color: const Color(0xFFB178FF),
              borderRadius: BorderRadius.circular(30),
            ),
            child: Row(
              children: [
                const Icon(Icons.arrow_downward, size: 13, color: Colors.white),
                const SizedBox(width: 5),
                const Padding(
                  padding: EdgeInsets.all(5),
                  child: Text(
                    'View my Policy',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xffdec7ff),
                    ),
                  ),
                ),
                const Spacer(),
                Container(
                  height: 60,
                  width: 5,
                  child: const VerticalDivider(
                    color: Color(0xFF6B00FF),
                  ),
                ),
                const Spacer(),
                const SizedBox(width: 5),
                const Padding(
                  padding: EdgeInsets.all(5),
                  child: Text(
                    'Make a Payment',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xffdec7ff),
                    ),
                  ),
                ),
                const Icon(Icons.arrow_upward, size: 13, color: Colors.white),
              ],
            ),
          ),
          const SizedBox(height: 15),
          const BottomWidget(),
        ],
      ),
    );
  }
}
