import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';
// import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // List<String> countryList = [
  //   "PAKISTAN",
  //   "INDIA",
  //   "JAPAN",
  //   "AUSTRALIA",
  //   "RUSSIA",
  //   "BELIZE"
  // ];
  final List<String> imgList = [
    'assets/images/image1.jpg',
    'assets/images/image2.jpg',
    'assets/images/image3.jpg',
  ];
  int _bottomNavIndex = 0;
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 184,
        flexibleSpace: Stack(
          children: [
            Container(
              height: 164,
              color: Color(0xFF45A5FF),
            ),
            Container(
              height: double.infinity,
              color: Colors.white,
              margin: EdgeInsets.only(top: 164),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 36),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/images/logo.png',
                    width: 64,
                    height: 74,
                  ),
                  Text(
                    'Shopan',
                    style: GoogleFonts.dmSerifDisplay(
                      textStyle: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 144),
              padding:
                  EdgeInsets.symmetric(horizontal: 20), // Padding horizontal 20
              child: Row(
                children: [
                  Container(
                    height: 48,
                    width: 48,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(
                              0.15), // Warna bayangan dengan opasitas
                          spreadRadius: 2, // Jangkauan bayangan
                          blurRadius: 2, // Jarak blur bayangan
                          offset: Offset(0, 3), // Posisi bayangan (x, y)
                        ),
                      ],
                    ),
                    child: Icon(
                      Icons.camera_alt,
                      size: 32,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                      width: 14), // Spasi antara ikon kamera dan TextFormField
                  Expanded(
                    child: Container(
                      height: 48,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(
                                0.15), // Warna bayangan dengan opasitas
                            spreadRadius: 2, // Jangkauan bayangan
                            blurRadius: 2, // Jarak blur bayangan
                            offset: Offset(0, 3), // Posisi bayangan (x, y)
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: TextFormField(
                          decoration: InputDecoration(
                            icon: Icon(
                              Icons.search,
                              size: 24,
                              color: Colors.black,
                            ),
                            hintText: 'Cari kebutuhan anda disini',
                            border: InputBorder
                                .none, // Remove the default underline border
                            isDense:
                                true, // Reduce the default padding inside TextFormField
                            contentPadding: EdgeInsets.symmetric(vertical: 12),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: [
                CarouselSlider(
                  items: imgList.map((e) {
                    return Container(
                      margin: EdgeInsets.symmetric(
                        horizontal: 8,
                      ),
                      width: 324,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.asset(
                          e,
                          fit: BoxFit.cover,
                          width: double.infinity,
                        ),
                      ),
                    );
                  }).toList(),
                  options: CarouselOptions(
                    height: 154,
                    autoPlay: true,
                    reverse: false,
                    autoPlayAnimationDuration: Duration(milliseconds: 1200),
                    autoPlayInterval: Duration(seconds: 8),
                    enlargeCenterPage: true,
                    enlargeStrategy: CenterPageEnlargeStrategy.height,
                  ),
                ),
              ],
            ),
            Container(
              height: 224,
              margin: EdgeInsets.symmetric(vertical: 32, horizontal: 20),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    width: 164,
                    height: 224,
                    margin: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.15),
                          spreadRadius: 2,
                          blurRadius: 1,
                          offset: Offset(0, 2),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 164,
                    height: 224,
                    margin: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.15),
                          spreadRadius: 2,
                          blurRadius: 1,
                          offset: Offset(0, 2),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 164,
                    height: 224,
                    margin: EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.15),
                          spreadRadius: 2,
                          blurRadius: 1,
                          offset: Offset(0, 2),
                        ),
                      ],
                    ),
                  ),
                  // Add more containers here...
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _bottomNavIndex,
        onTap: (index) => setState(() => _bottomNavIndex = index),
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
