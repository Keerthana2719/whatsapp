import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Chatt extends StatelessWidget {
  final String img1;
  final String name;
  final bool isSeen;
  final String msg;

  const Chatt(
      {required this.img1,
        required this.name,
        required this.isSeen,
        required this.msg,
        super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, top: 10,right: 10),
      child: Row(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage(img1),
          ),
          SizedBox(
            width: 20,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontSize: 16),
                ),
                SizedBox(
                  height: 3,
                ),
                Row(
                  children: [
                    Icon(
                      isSeen ? Icons.done_all : Icons.done,
                      size: 20,
                      color: isSeen ? Colors.blue : Colors.grey,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      msg,
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 13),
                    )
                  ],
                )
              ],
            ),
          ),
          Column(
            children: [
              Text(
                "Yesterday",
                style: TextStyle(color: Colors.grey, fontSize: 12),
              )
            ],
          )
        ],
      ),
    );
  }
}
