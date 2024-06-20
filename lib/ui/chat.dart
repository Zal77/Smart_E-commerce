import 'package:flutter/material.dart';
import 'package:shopan/ui/home.dart';
import 'package:shopan/ui/notifikasi.dart';
import 'package:shopan/ui/profile.dart';

class Chat extends StatefulWidget {
  const Chat({super.key});

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  int _bottomNavIndex = 2;
  final iconList = <IconData>[
    Icons.home,
    Icons.shopping_cart_checkout_rounded,
    Icons.message,
    Icons.person_2_rounded,
  ];
  final List<String> labelList = [
    'Home',
    'Keranjang',
    'Kotak Masuk',
    'Profile',
  ];

  void _navOntap(int index) {
    setState(() {
      _bottomNavIndex = index;
    });
    switch (index) {
      case 0:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Home()),
        );
        break;
      case 2:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Chat()),
        );
        break;
      case 3:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Profile()),
        );
        break;
      default:
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          "Kotak Masuk",
          style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          print('pindah');
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Notifikasi()));
                        },
                        child: Container(
                          alignment: Alignment.center,
                          height: 42,
                          width: 142,
                          decoration: BoxDecoration(
                            color: Color(0xff8F8F8F),
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 1,
                                blurRadius: 1,
                                offset:
                                    Offset(0, 1), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Text(
                            "Chat",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 12),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          print('pindah');
                        },
                        child: Container(
                          alignment: Alignment.center,
                          height: 42,
                          width: 142,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 1,
                                blurRadius: 1,
                                offset:
                                    Offset(0, 1), // changes position of shadow
                              ),
                            ],
                          ),
                          child: Text(
                            "Notifikasi",
                            style: TextStyle(color: Colors.black, fontSize: 20),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 16),
                child: Container(
                  height: 64,
                  width: double.infinity,
                  alignment: Alignment.centerLeft,
                  child: Row(
                    children: [
                      Container(
                        height: 64,
                        width: 64,
                        margin: EdgeInsets.only(right: 12),
                        child: CircleAvatar(
                          radius: 50,
                          backgroundImage:
                              AssetImage('assets/images/image1.jpg'),
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "AINI",
                              style: TextStyle(fontSize: 16),
                            ),
                            SizedBox(height: 8),
                            Text(
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras pulvinar massa id nisi blandit, eu lobortis nulla pharetra. Nam tellus enim, accumsan ut sollicitudin nec, tristique sit amet ante. ',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(fontSize: 12),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _bottomNavIndex,
        onTap: _navOntap,
        items: List.generate(iconList.length, (index) {
          return BottomNavigationBarItem(
            icon: Icon(iconList[index]),
            label: labelList[index],
          );
        }).toList(),
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Color(0xff0003E4),
        unselectedItemColor: Color(0xff8F8F8F),
      ),
    );
  }
}
