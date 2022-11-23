import 'package:flutter/material.dart';
import 'package:pbp_flutter_lab/page/form.dart';
import 'package:pbp_flutter_lab/page/list.dart';
import 'package:pbp_flutter_lab/main.dart';
import 'package:pbp_flutter_lab/page/mywatchlist_page.dart';

class Drwr extends StatefulWidget {
  const Drwr({super.key});

  @override
  State<Drwr> createState() => _DrwrState();
}

class _DrwrState extends State<Drwr> {
  // root from drawer
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          ListTile(
            title: const Text("counter_7"),
            onTap: () {
              Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => const MyHomePage(),
                ), 
              );
            },
          ),
          ListTile(
            title: const Text("Tambah Budget"),
            onTap: () {
              Navigator.push(
                context, MaterialPageRoute(builder: (context) => const FormForBudget()),
              );
            },
          ),
          ListTile(
            title: const Text("Data Budget"),
            onTap: () {
              Navigator.push(
                context, MaterialPageRoute(builder: (context) => const DaftarBudget()),
              );
            },
          ),
          ListTile(
            title: const Text("My Watch List"),
            onTap: () {
              Navigator.push(
                context, MaterialPageRoute(builder: (context) => const MyWatchListPage()),
              );
            },
          ),
        ]
      )
    );
  }
}