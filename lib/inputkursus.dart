import 'package:flutter/material.dart';
import 'package:intent/halamanUtama.dart';
import 'tampilkursus.dart';

class inputkursus extends StatelessWidget {
  const inputkursus({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.pink),
      home: const lamankursus(),
    );
  }
}

class lamankursus extends StatefulWidget {
  const lamankursus({super.key});

  @override
  State<lamankursus> createState() => _lamankursusState();
}

class _lamankursusState extends State<lamankursus> {

  TextEditingController noPesan = TextEditingController();
  TextEditingController nama = TextEditingController();
  TextEditingController noHp = TextEditingController();

  int? status;
  String? st;

  bool bing = false;
  bool Python = false;
  bool mobile_flutter = false;
  bool web = false;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: const Text("Pesan kursus"),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const Halamanutama(),
                ),
              );
            },
            icon: const Icon(Icons.close),
          )
        ],
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [

            TextField(
              controller: noPesan,
              decoration: const InputDecoration(
                labelText: "No. Pesanan",
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 10),

            TextField(
              controller: nama,
              decoration: const InputDecoration(
                labelText: "Nama",
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 10),

            TextField(
              controller: noHp,
              decoration: const InputDecoration(
                labelText: "No. telp",
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 10),

            const Text("Status"),

            Row(
              children: [

                Radio(
                  value: 1,
                  groupValue: status,
                  onChanged: (value) {
                    setState(() {
                      status = value as int;
                      st = "Mahasiswa";
                    });
                  },
                ),

                const Text("Mahasiswa"),

                Radio(
                  value: 2,
                  groupValue: status,
                  onChanged: (value) {
                    setState(() {
                      status = value as int;
                      st = "Umum";
                    });
                  },
                ),

                const Text("Umum"),
              ],
            ),

            const SizedBox(height: 10),

            const Text(
              "Pilihan Kursus",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),

            CheckboxListTile(
              title: const Text("Bahasa Inggris"),
              value: bing,
              onChanged: (value) {
                setState(() {
                  bing = value!;
                });
              },
            ),

            CheckboxListTile(
              title: const Text("Python"),
              value: Python,
              onChanged: (value) {
                setState(() {
                  Python = value!;
                });
              },
            ),

            CheckboxListTile(
              title: const Text("Mobile Flutter"),
              value: mobile_flutter,
              onChanged: (value) {
                setState(() {
                  mobile_flutter = value!;
                });
              },
            ),

            CheckboxListTile(
              title: const Text("web"),
              value: web,
              onChanged: (value) {
                setState(() {
                  web = value!;
                });
              },
            ),

            const SizedBox(height: 10),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => tampilkursus(
                      noPesan: noPesan.text,
                      nama: nama.text,
                      noTelp: noHp.text,
                      status: st.toString(),
                      bing: bing,
                      Python: Python,
                      mobile_flutter: mobile_flutter,
                      web: web,
                    ),
                  ),
                );
              },

              child: const Text("Pesan"),
            ),

            const SizedBox(height: 10)
          ],
        ),
      ),
    );
  }
}