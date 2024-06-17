import 'package:flutter/material.dart';
import 'package:shopan/ui/profile.dart';
// import 'package:shopan/ui/daftar.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: Profile());
  }
}
