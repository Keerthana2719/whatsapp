import 'package:flutter/material.dart';

class Statuss extends StatelessWidget {
  final String img2;
  final String sname;
  final String time;

  Statuss({
    required this.img2,
    required this.sname,
    required this.time,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0), // Adds vertical spacing between rows
      child: Row(
        children: [
          SizedBox(height: 10),
          CircleAvatar(
            radius: 30,
            backgroundColor: Colors.grey,
            child: CircleAvatar(
              radius: 27,
              backgroundImage: AssetImage(img2),
            ),
          ),
          SizedBox(width: 15),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                sname,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w700),
              ),
              Text(
                time,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 13,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
