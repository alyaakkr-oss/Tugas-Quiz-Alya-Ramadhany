import 'dart:io';
import 'package:flutter/material.dart';
import 'package:intent/biodata.dart';
import 'package:intent/inputkursus.dart';
import 'package:intent/tampilbiodata.dart';
import 'package:intent/tampilkursus.dart';
import 'package:intent/tampilpesanan.dart';
import 'inputpesanan.dart';

class Halamanutama extends StatefulWidget {
  const Halamanutama({super.key});

  @override
  State<Halamanutama> createState() => _HalamanutamaState();
}

class _HalamanutamaState extends State<Halamanutama> {
  @override
  Widget build(BuildContext context) {
    String nama = " ", jk = " ", nim = " ", status = " "; //string
    var hobi = [];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 240, 154, 191),
        title: Text('Menu Drawer'),),
        backgroundColor: Colors.white,
      body: Center(child: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
        children:[Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(image: const DecorationImage(
            image: AssetImage('image/cek.jpeg'),),
            borderRadius: BorderRadius.circular(20)),width: 150,height: 150,),
        Container(child: const Text( 'Selamat Datang Pada Aplikasi Biodata',
        textAlign: TextAlign.center)),
        Container(child: const Text('Input Biodata digunakan untuk menginput NIM, Nama, Alamat, Jenis Kelamin, Agama dan Hobi', 
        textAlign: TextAlign.center)),
        Container(child: Text('Tampil Biodata digunakan untuk menampilkan data NIM, Nama, Alamat, Jenis Kelamin, Agama dan Hobi', 
        textAlign: TextAlign.center)),
        Container(child: const Text('Terima Kasih',textAlign: TextAlign.center))
      ],),),),
      drawer: Drawer(
        child: ListView(children: [
          DrawerHeader( decoration: const BoxDecoration(
            image: DecorationImage( image: AssetImage('image/back.jpeg'),
            fit: BoxFit.cover)),
             child: Center(
              child: Container(width: 100, height: 100, decoration: const BoxDecoration( 
                shape: BoxShape.circle, image: DecorationImage(
                  image: AssetImage('image/avatar.jpeg'), fit: BoxFit.contain,))))),
        ListTile(
          leading: Icon(Icons.person), 
          title: Text('Input Biodata'),
          trailing: IconButton(onPressed: (){
            setState(() {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>inputbiodata()),);
            });
          }, icon: Icon(Icons.search)),
          ),
        ListTile(
          leading: Icon(Icons.person), 
          title: Text('Input Kursus'),
          trailing: IconButton(onPressed: (){
            setState(() {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>inputkursus()),);
            });
          }, icon: Icon(Icons.search)),
          ),
         ListTile(
          leading: Icon(Icons.person), 
          title: Text('Input Pesanan'),
          trailing: IconButton(onPressed: (){
            setState(() {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>Inputpesanan()),);
            });
          }, icon: Icon(Icons.search)),
          ),
        ListTile(
          leading: Icon(Icons.settings), 
          title: Text('Tampil Biodata'),
          trailing: IconButton(onPressed: (){
            setState(() {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>tampilbiodata(
                name: nama, 
                nim: nim,
                jk: jk,
                hobi: hobi,
                status: status,)),);
            });
          }, icon: Icon(Icons.settings)),
          ),
        ListTile(
          leading: Icon(Icons.settings), 
          title: Text('Tampil Kursus'),
          trailing: IconButton(onPressed: (){
            setState(() {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>tampilkursus(
                noPesan: '',
                nama: '',
                noTelp: '',
                status: '',
                bing: false,
                Python: false,
                mobile_flutter: false,
                web: false)),);
            });
          }, icon: Icon(Icons.settings)),
          ),
        ListTile(
          leading: Icon(Icons.settings), 
          title: Text('Tampil Pesanan'),
          trailing: IconButton(onPressed: (){
            setState(() {
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>tampilpesanan(
                noPesanan: '',
                nama: '', 
                noTelp: '',
                payment: '',
                jusjeruk: false,
                alpukat: false,
                mierebus: false,
                gado2: false, 
                kartu: '',
              )),);
            });
          }, icon: Icon(Icons.settings)),),
        ListTile(
          leading: Icon(Icons.close), 
          title: Text('Keluar'),
          trailing: IconButton(onPressed: (){exit(0);}, icon: Icon(Icons.exit_to_app)),
          ),
      ],),) ,
    );}}