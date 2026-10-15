import 'package:flutter/material.dart';
import 'package:intent/halamanUtama.dart';

void main() {
  runApp(const intentprak());
}

class intentprak extends StatelessWidget {
  const intentprak({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.pink),
      home: prakhalinten()
      );
  }
}

class prakhalinten extends StatefulWidget {
  const prakhalinten({super.key});

  @override
  State<prakhalinten> createState() => _prakhalintenstate();
}

class _prakhalintenstate extends State<prakhalinten> {
  @override
  initState(){
    super.initState();
    Future.delayed(Duration(seconds: 2),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>Halamanutama()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 240, 154, 191),
      body: Center( child: Column(
        mainAxisAlignment: MainAxisAlignment.center, 
        children:[Image.asset('image/buku.png', height: 150)],)
      ),
    );
  }
}
