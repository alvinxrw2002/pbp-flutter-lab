import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'model.dart';
import 'drawer.dart';

class FormForBudget extends StatefulWidget {
  const FormForBudget({super.key});

  @override
  State<FormForBudget> createState() => _FormForBudgetState();
}

class _FormForBudgetState extends State<FormForBudget> {
  final _formKey = GlobalKey<FormState>();
  String title = "";
  String? type;
  int nominal = 0;
  List<String> jenisBudget = ["Pengeluaran", "Pemasukan"];
  DateTime date = DateTime.now();

  void submitForm(BuildContext context) {
    if (!_formKey.currentState!.validate()) {
      return;
    }

    final newBudget = Budget(title, nominal, type!);
    Provider.of<ModelBudget>(context, listen: false).add(newBudget);

    const snackBar = SnackBar(
      content: Text('Budget berhasil ditambahkan'),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form Budget'),
      ),
      drawer: const Drwr(),
      body: Form(
        key: _formKey,
        child: Container(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: "Judul",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  onChanged: (String? value) {
                    setState(() {
                      title = value!;
                    });
                  },
                  onSaved: (String? value) {
                    setState(() {
                      title = value!;
                    });
                  },
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'judul harus diisi';
                    }
                    return null;
                  },
                ),
              ),
              const SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: "Nominal",
                    hintText: "Masukkan dalam format angka",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  // Menambahkan behavior saat nama diketik
                  onChanged: (String? value) {
                    setState(() {
                      nominal = int.parse(value!);
                    });
                  },
                  onSaved: (String? value) {
                    setState(() {
                      nominal = int.parse(value!);
                    });
                  },
                  keyboardType: TextInputType.number,
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                  ],
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'nominal harus diisi';
                    }

                    return null;
                  },
                ),
              ),
              const SizedBox(height: 16),
              DropdownButtonFormField(
                value: type,
                icon: const Icon(Icons.arrow_drop_down),
                hint: const Text("Pilih Jenis"),
                items: jenisBudget.map((String items) {
                  return DropdownMenuItem(
                    value: items,
                    child: Text(items),
                  );
                }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    type = newValue!;
                  });
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "pilih salah satu jenis";
                  }

                  return null;
                },
              ),
              const Spacer(), // Beri jarak dengan Button
              TextButton(
                onPressed: () => submitForm(context),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blue),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    "Simpan",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
