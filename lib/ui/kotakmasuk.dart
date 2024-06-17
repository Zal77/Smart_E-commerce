import 'package:flutter/material.dart';

class KotakMasuk extends StatefulWidget {
  const KotakMasuk({super.key});

  @override
  State<KotakMasuk> createState() => _KotakMasukState();
}

class _KotakMasukState extends State<KotakMasuk> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kotak Masuk", style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold), ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [Row(
            children: [Container(
            alignment: Alignment.center,
            height: 42,
            width: 158, 
            child: ElevatedButton(
                                  onPressed: () {
                                    print('test');
                                  },
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Color(0xff8F8F8F)),
                                  child: Text(
                                    'Chat',
                                    style: TextStyle(
                                        fontSize: 14, color: Colors.white),
                                  ),
                                ), ),
                                Container(
            alignment: Alignment.center,
            height: 42,
            width: 158, decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(16),boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.5),
        spreadRadius: 1,
        blurRadius: 1,
        offset: Offset(0, 1), // changes position of shadow
      ),
    ],),
            child: Text("chat", style: TextStyle(color: Colors.black, fontSize: 20),),
          ),],
          ),Container(
            height: 64,
            width: double.infinity,
            alignment: Alignment.centerLeft,
            child: Row(
              children: [
                Container(
                  height: 64,
                  width: 64,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.amber
                  ),
                ),
                Column(
                  children: [Text("AINI"), Text("PACAR JAKE")],
                )
              ],
            ),
          )],
          
        ),
      ),
    );
  }
}