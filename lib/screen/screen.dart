import 'package:flutter/material.dart';
import '../class/call.dart';
import '../class/chat.dart';
import '../class/status.dart';

class Ui extends StatefulWidget {
  const Ui({super.key});

  @override
  State<Ui> createState() => _UiState();
}

class _UiState extends State<Ui> {
  final List menuItems = [
    {'value': 'New group', 'icon': Icons.group_add, 'text': 'New group'},
    {'value': 'New broadcast', 'icon': Icons.campaign, 'text': 'New broadcast'},
    {
      'value': 'linked devices',
      'icon': Icons.devices,
      'text': 'Linked devices'
    },
    {
      'value': 'Starred messages',
      'icon': Icons.star,
      'text': 'Starred messages'
    },
    {'value': 'Payments', 'icon': Icons.payment, 'text': 'Payments'},
    {'value': 'Settings', 'icon': Icons.settings, 'text': 'Settings'},
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.green,
            leadingWidth: 200,
            leading: Padding(
              padding: const EdgeInsets.only(left: 10, top: 8),
              child: Text(
                "Whatsapp",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.camera_alt_outlined,
                  size: 25,
                  color: Colors.white,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search,
                  size: 25,
                  color: Colors.white,
                ),
              ),
              Theme(
                data: Theme.of(context).copyWith(
                  popupMenuTheme: PopupMenuThemeData(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
                child: PopupMenuButton<String>(
                  onSelected: (value) {
                    print('Selected: $value');
                  },
                  itemBuilder: (context) => menuItems
                      .map(
                        (item) => PopupMenuItem<String>(
                      value: item['value'],
                      child: ListTile(
                        leading: Icon(item['icon'], color: Colors.black),
                        title: Text(item['text']),
                      ),
                    ),
                  )
                      .toList(),
                  icon: Icon(
                    Icons.more_vert,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
            bottom: TabBar(
              tabs: [
                Tab(
                  child: Text("CHAT"),
                ),
                Tab(
                  child: Text("STATUS"),
                ),
                Tab(
                  child: Text("CALLS"),
                ),
              ],
              indicatorColor: Colors.white,
              labelColor: Colors.white,
              labelStyle: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
              unselectedLabelColor: Colors.white,
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorWeight: 4,
            ),
          ),
          body: TabBarView(
            children: [
              Tab(
                child: Chat(),
              ),
               Tab(
                 child: Status(),
               ),
              Tab(
                child: Call(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Chat extends StatelessWidget {
  const Chat({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Column(
            children: [
              Chatt(
                  img1: "assets/img1.png",
                  name: "Daniel",
                  msg: "Hello",
                  isSeen: true),
              Chatt(
                  img1: "assets/img2.png",
                  name: "Desha",
                  msg: "Ok",
                  isSeen: false),
              Chatt(
                  img1: "assets/img3.png",
                  name: "Anthony",
                  msg: "what are you doing",
                  isSeen: false),
              Chatt(
                  img1: "assets/img4.png",
                  name: "Divya",
                  msg: "tomorrow",
                  isSeen: true),
              Chatt(
                  img1: "assets/img5.png",
                  name: "Peo",
                  msg: "Butterfly",
                  isSeen: false),
            ],
          ),
        ),
        Positioned(
          bottom: 50,
          right: 20,
          child: Container(
            width: 67,
            height: 67,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.green,
            ),
            child: Center(
              child: Image.asset(
                "assets/chat.png",
                color: Colors.black,
                width: 27,
                height: 27,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class Status extends StatelessWidget {
  const Status({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, top: 8, right: 10),
      child: Stack(
        children: [Positioned.fill(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Stack(children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage("assets/img2.png"),
                    ),
                    Positioned(
                        top: 40,
                        left: 40,
                        child: CircleAvatar(
                            radius: 10,
                            child: Icon(
                              Icons.add,
                              size: 13,
                            ))),
                  ]),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("My status",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w600)),
                      SizedBox(
                        height: 3,
                      ),
                      Text("Tap to add your story",
                          style: TextStyle(
                              color: Colors.green,
                              fontSize: 13,
                              fontWeight: FontWeight.w400))
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Text("Viewed Update",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w500)),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage("assets/img1.png"),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Daniel",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w600)),
                      SizedBox(
                        height: 3,
                      ),
                      Text("15 minutes ago")
                    ],
                  )
                ],
              ),
              Theme(
                data: ThemeData().copyWith(dividerColor: Colors.transparent),
                child: ExpansionTile(
                  tilePadding: EdgeInsets.all(0.0),
                  title: Text('Muted updates',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.black)),
                  children: [
                    Statuss(
                      sname: "Anthony",
                      time: '56 minutes ago',
                      img2: 'assets/img3.png',
                    ),
                    Statuss(
                      sname: 'Peo',
                      time: '40 minutes ago',
                      img2: 'assets/img5.png',
                    ),
                    Statuss(
                        sname: 'Desha',
                        time: '2 minutes ago',
                        img2: "assets/img2.png"),
                  ],
                ),
              )
            ],
          ),
        ),
          Positioned(
            bottom: 50,
            right: 20,
            child: Container(
              width: 67,
              height: 67,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.green,
              ),
              child: Center(
                child: Icon(Icons.camera_alt,color: Colors.black, size: 30,
                ),
              ),
            ),
          ),
     ] ),
    );
  }
}

class Call extends StatelessWidget {
  const Call({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Calls(
                callStatus: 'Outgoing',
                callType: 'Audio',
                chatMessage: 'Today, 12:28 PM',
                chatTitle: 'Daniel',
                image: "assets/img1.png"),
            Calls(
                callStatus: 'Incoming',
                callType: 'Video',
                chatMessage: 'Today, 01:11 AM',
                chatTitle: 'Desha',
                image: "assets/img2.png"),
            Calls(
              callStatus: 'Incoming',
              callType: 'Video',
              chatMessage: 'Today, 5:28 AM',
              chatTitle: 'Anthony',
              image: 'assets/img3.png',
            ),
            Calls(
              callStatus: 'Outgoing',
              callType: 'Audio',
              chatMessage: 'Today, 12:28 PM',
              chatTitle: 'Divya',
              image: 'assets/img4.png',
            ),
          ],
        ),
      ),
    );
  }
}
