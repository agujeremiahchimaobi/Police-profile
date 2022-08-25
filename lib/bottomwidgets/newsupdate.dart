import 'package:flutter/material.dart';

class NewsUpdate extends StatelessWidget {
  const NewsUpdate({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.only(top: 30.0, left: 20.0, right: 20.0),
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(30),
            ),
            color: Colors.white),
        margin: const EdgeInsets.only(top: 30.0),
        child: Column(
          children: [
            Row(
              children: const [
                Text(
                  'News and Update',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF565B5A),
                  ),
                ),
                Spacer(),
                Text(
                  'See all',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff6C00FF),
                  ),
                )
              ],
            ),
            const SizedBox(height: 15.0),
            Row(
              children: [
                const SizedBox(
                  width: 15,
                ),
                Image.asset(
                  'images/fam.jpg',
                  height: 100.0,
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Emergency Medial Coverage',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF565B5A),
                      ),
                    ),
                    SizedBox(height: 5.0),
                    Text(
                      'when you are travelling with a health condition \nthe last thing you want o worry about is \nwether or not you would be covered if you need',
                      style: TextStyle(
                        fontSize: 12,
                        color: Color(0xFFCBCDDA),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
