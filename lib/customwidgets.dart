import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'bottomwidgets/botalert.dart';

class iconwidget extends StatelessWidget {
  const iconwidget({Key? key, this.icon, required this.title});

  final IconData? icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 1,
              offset: const Offset(0, 3),
            ),
          ],
          borderRadius: BorderRadius.circular(10.0),
          color: const Color(0xFFF5EEFF),
        ),
        child: Icon(
          icon,
          color: const Color(0xFF903DFF),
        ),
      ),
      const SizedBox(height: 5.0),
      Text(
        title,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 15,
          color: Color(0xFF565B5A),
        ),
      )
    ]);
  }
}

const kavdTextstyle = TextStyle(fontSize: 23, color: Color(0xFFFBF8FF));
const kavdSubTextstyle = TextStyle(fontSize: 11, color: Color(0xFFB178FF));

class BottomWidget extends StatelessWidget {
  const BottomWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
          color: Colors.white,
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  iconwidget(
                    title: 'Sport Car',
                    icon: FontAwesomeIcons.carRear,
                  ),
                  iconwidget(
                    title: 'Hospital',
                    icon: FontAwesomeIcons.hospital,
                  ),
                  iconwidget(
                    title: 'Gym & Sports',
                    icon: FontAwesomeIcons.trophy,
                  ),
                  iconwidget(
                    title: 'Hotel',
                    icon: FontAwesomeIcons.hotel,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10.0),
            const BotAlertwidget(),
          ],
        ),
      ),
    );
  }
}
