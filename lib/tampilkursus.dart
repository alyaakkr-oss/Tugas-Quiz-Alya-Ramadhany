import 'package:flutter/material.dart';
import 'package:intent/halamanUtama.dart';

class tampilkursus extends StatefulWidget {
  final String noPesan, nama, noTelp, status;
  final bool bing, Python, mobile_flutter, web;

  const tampilkursus({
    super.key,
    required this.noPesan,
    required this.nama,
    required this.noTelp,
    required this.status,
    required this.bing,
    required this.Python,
    required this.mobile_flutter,
    required this.web,
  });

  @override
  State<tampilkursus> createState() => _tampilkursusState();
}

class _tampilkursusState extends State<tampilkursus> {
  double total = 0;
  double diskon = 0;
  double totalBayar = 0;

  void hitung() {
    total = 0;

    if (widget.bing) {
      total += 150000;
    }
    if (widget.Python) {
      total += 175000;
    }
    if (widget.mobile_flutter) {
      total += 200000;
    }
    if (widget.web) {
      total += 225000;
    }
    if (widget.status == "Mahasiswa") {
      diskon = total * 0.05;
    } else {
      diskon = 0;
    }

    totalBayar = total - diskon;
  }

  @override
  Widget build(BuildContext context) {
    hitung();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 237, 145, 190),
        title: const Text("Tampil Kursus"),
        actions: [
          IconButton(
            onPressed: () {
               Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => const Halamanutama()),
              );
            },
            icon: const Icon(Icons.close),
          )],),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("No. Pesanan : ${widget.noPesan}"),
            const SizedBox(height: 8),
            Text("Nama : ${widget.nama}"),
            const SizedBox(height: 8),
            Text("No. Telp : ${widget.noTelp}"),
            const SizedBox(height: 8),
            Text("Status : ${widget.status}"),
            const SizedBox(height: 8),
            const Text("Pilihan Kursus :"),
            const SizedBox(height: 8),

            if (widget.bing) ...[
              const Text(" - Bahasa Inggris : Rp150000"),
              const SizedBox(height: 8),
            ],

            if (widget.Python) ...[
              const Text(" - Python : Rp175000"),
              const SizedBox(height: 8),
            ],

            if (widget.mobile_flutter) ...[
              const Text(" - Flutter : Rp200000"),
              const SizedBox(height: 8),
            ],

            if (widget.web) ...[
              const Text(" - Web : Rp225000"),
              const SizedBox(height: 8),
            ],

            Text("Total : Rp${total.toStringAsFixed(0)}"),
            const SizedBox(height: 8),
            Text("Diskon : Rp${diskon.toStringAsFixed(0)}"),
            const SizedBox(height: 8),
            Text("Total Biaya Kursus : Rp${totalBayar.toStringAsFixed(0)}"),
            const SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}