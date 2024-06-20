import 'package:flutter/material.dart';
import 'package:shopan/ui/home.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  int _bottomNavIndex = 3;
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
      // c
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
        toolbarHeight: 200,
        flexibleSpace: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              color: Color(0xff45A5FF),
              alignment: Alignment.centerLeft,
              child: Opacity(
                opacity: 0.3,
                child: Image.asset(
                  'assets/images/logo.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              height: double.infinity,
              color: Colors.white,
              margin: EdgeInsets.only(top: 180),
            ),
            Container(
              height: 100,
              padding: EdgeInsets.all(12),
              margin: EdgeInsets.symmetric(horizontal: 30),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.15),
                    spreadRadius: 3,
                    blurRadius: 1,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 68,
                            width: 68,
                            margin: EdgeInsets.only(right: 16),
                            child: CircleAvatar(
                              radius: 50,
                              backgroundImage:
                                  AssetImage('assets/images/image1.jpg'),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'rizal fauzi'.toUpperCase(),
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Text(
                                '081394105271',
                                style: TextStyle(fontSize: 18),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Container(
                        width: 38,
                        height: 38,
                        padding: EdgeInsets.all(6),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 1,
                              blurRadius: 2,
                              offset:
                                  Offset(0, 1), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Icon(Icons.edit),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 32, horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            GestureDetector(
              onTap: () {
                print('keluar');
              },
              child: Container(
                alignment: Alignment.center,
                width: double.infinity,
                height: 48,
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xff0034EE), width: 2),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(
                  'KELUAR',
                  style: TextStyle(fontSize: 18, color: Color(0xff0034EE)),
                ),
              ),
            ),
          ],
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
