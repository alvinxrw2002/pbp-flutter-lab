import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'model.dart';
import 'drawer.dart';

class DaftarBudget extends StatefulWidget {
  const DaftarBudget({super.key});

  @override
  State<DaftarBudget> createState() => _DaftarBudgetState();
}

class _DaftarBudgetState extends State<DaftarBudget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: const Text('Form Budget'),
      ),
      drawer: const Drwr(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Consumer<ModelBudget>(builder: (context, value, child) {
          return ListView.builder(
            itemCount: value.budgets.length,
            itemBuilder: ((context, index) {
              var item = value.budgets[index];

              return Card(
                elevation: 0,
                color: Theme.of(context).colorScheme.surfaceVariant,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(item.title, style: const TextStyle(fontSize: 26)),
                      const SizedBox(width: 300, height: 60),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(item.nominal.toString()),
                          Text(item.type),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            }),
          );
        }),
      )
    );
  }
}