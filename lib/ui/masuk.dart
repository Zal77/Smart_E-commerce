import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopan/ui/daftar.dart';
import 'package:shopan/ui/home.dart';

class Masuk extends StatefulWidget {
  const Masuk({super.key});

  @override
  State<Masuk> createState() => _MasukState();
}

class _MasukState extends State<Masuk> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'SHOPAN',
                  style: GoogleFonts.dmSerifDisplay(
                    textStyle: TextStyle(
                      fontSize: 48,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Text(
                  'Tempat Jual dan Beli hasil panen',
                  style: TextStyle(fontSize: 14),
                ),

                // CARD
                Container(
                  margin: EdgeInsets.symmetric(vertical: 48),
                  height: 416,
                  width: 320,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    // border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 4,
                        offset: Offset(0, 4), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      //Background
                      Container(
                        alignment: Alignment.center,
                        child: Opacity(
                          opacity: 0.15,
                          child: Image.asset(
                            'assets/images/logo.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),

                      // FORM
                      Container(
                        margin:
                            EdgeInsets.symmetric(vertical: 18, horizontal: 18),
                        alignment: Alignment.topCenter,
                        child: Column(
                          children: [
                            // PILIH DAFTAR/MASUK
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ElevatedButton(
                                  onPressed: () {
                                    print('Berpindah ke file daftar.dart');
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (_) => Daftar()));
                                  },
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Color(0xFFFFFFFF)),
                                  child: Text(
                                    'Daftar',
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ),
                                SizedBox(
                                  width: 14,
                                ),
                                ElevatedButton(
                                  onPressed: () {
                                    print('pencet');
                                  },
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Color(0xFF0003E4)),
                                  child: Text('Masuk',
                                      style: TextStyle(color: Colors.white)),
                                ),
                              ],
                            ),

                            // INPUT EMAIL/NO HP
                            Container(
                              margin: EdgeInsets.only(bottom: 12, top: 78),
                              height: 48,
                              child: Center(
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(12)),
                                    icon: Icon(Icons.person),
                                    hintText: 'Masukkan email/no hp',
                                    labelText: 'Email/no hp',
                                    hintStyle: TextStyle(fontSize: 14),
                                    labelStyle: TextStyle(fontSize: 14),
                                  ),
                                  onSaved: (String? value) {
                                    // This optional block of code can be used to run
                                    // code when the user saves the form.
                                  },
                                  validator: (String? value) {
                                    return (value != null &&
                                            value.contains('@'))
                                        ? 'Do not use the @ char.'
                                        : null;
                                  },
                                ),
                              ),
                            ),

                            // INPUT  PASSWORD
                            Container(
                              margin: EdgeInsets.only(bottom: 78),
                              height: 48,
                              child: TextFormField(
                                obscureText: true,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  icon: Icon(Icons.password),
                                  hintText: 'Buat password',
                                  labelText: 'Password',
                                  hintStyle: TextStyle(fontSize: 14),
                                  labelStyle: TextStyle(fontSize: 14),
                                ),
                                onSaved: (String? value) {
                                  // This optional block of code can be used to run
                                  // code when the user saves the form.
                                },
                                validator: (String? value) {
                                  return (value != null && value.contains('@'))
                                      ? 'Do not use the @ char.'
                                      : null;
                                },
                              ),
                            ),

                            // SUBMIT
                            SizedBox(
                              width: double.infinity,
                              child: ElevatedButton(
                                onPressed: () {
                                  print('Berpindah ke file home.dart');
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (_) => Home()));
                                },
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Color(0xFF0003E4)),
                                child: Text(
                                  'Daftar',
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.white),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
