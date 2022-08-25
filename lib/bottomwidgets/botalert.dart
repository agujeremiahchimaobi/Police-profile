import 'package:flutter/material.dart';

import 'newsupdate.dart';

class BotAlertwidget extends StatelessWidget {
  const BotAlertwidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.only(top: 30.0),
        decoration: const BoxDecoration(
          color: Color(0xFFF7F5FA),
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(30),
          ),
        ),
        child: Column(
          children: [
            Row(
              children: const [
                SizedBox(width: 20.0),
                Text(
                  'Bot Alert',
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
                ),
                SizedBox(width: 20.0)
              ],
            ),
            const SizedBox(height: 20.0),
            Row(
              children: [
                const SizedBox(width: 20),
                Container(
                  padding: const EdgeInsets.only(bottom: 5),
                  height: 50.0,
                  width: 50.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: const Color(0xFF6900FF),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 1,
                        offset: const Offset(0, 3),
                      )
                    ],
                  ),
                  child: const Center(
                    child: Text(
                      '@',
                      style: TextStyle(
                        fontSize: 35.0,
                        color: Color(0xFF1BCBFF),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Email Verification',
                      style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF565B5A),
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Open your inbox. we just sent \nthe link for confirmation there',
                      style: TextStyle(
                        fontSize: 12,
                        color: Color(0xFFCBCDDA),
                      ),
                      maxLines: 3,
                      overflow: TextOverflow.fade,
                    ),
                  ],
                ),
              ],
            ),
            const NewsUpdate(),
          ],
        ),
      ),
    );
  }
}
