import 'package:flutter/material.dart';
import 'form.dart';
import 'list.dart';
import 'main.dart';

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
        ]
      )
    );
  }
}