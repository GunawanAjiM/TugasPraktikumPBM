import 'package:flutter/material.dart';
import 'package:tugas4/next_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const NextPage(),
                ),
              );
            },
            child: Text("Menuju Halaman lain"),
          ),
          ElevatedButton(
            onPressed: () {
              
            },
            child: Text("Menuju Halaman lain"),
          ),
        ],
      )),
    );
  }
}
