// Nama : Ahmad Aziz Wira Widodo
// Kelas : 10 PPLG 1

import 'package:flutter/material.dart';
import 'package:flutter_application_2/halamanDua.dart';

class Kalkulator extends StatefulWidget {
  Kalkulator({Key? key, required this.name, required this.kata})
      : super(key: key);
  String name, kata;

  @override
  State<Kalkulator> createState() => _KalkulatorState();
}

class _KalkulatorState extends State<Kalkulator> {
  TextEditingController angka1 = TextEditingController();
  TextEditingController angka2 = TextEditingController();
  num angkake1 = 0;
  num angkake2 = 0;
  num hasil = 0;
  var nama;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("KALKULATOR")),
      body: Container(
        child: Column(children: [
          Container(
            margin: EdgeInsets.only(top: 30, bottom: 10),
            child: Text(
              'Welcome : ${widget.name}',
              style: TextStyle(fontSize: 25),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10, bottom: 10),
            child: Text(
              'Kata Kata Hari Ini : ',
              style: TextStyle(fontSize: 20),
            ),
          ),
          Text(
            '${widget.kata}',
            style: TextStyle(fontSize: 20),
          ),
          Container(
            margin: EdgeInsets.all(12),
            child: TextField(
              keyboardType: TextInputType.number,
              onChanged: (value) {
                setState(() {
                  angkake1 = num.parse(value);
                });
              },
              controller: angka1,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: 'Angka Pertama'),
            ),
          ),
          Container(
            margin: EdgeInsets.all(12),
            child: TextField(
              keyboardType: TextInputType.number,
              onChanged: (value) {
                setState(() {
                  angkake2 = num.parse(value);
                });
              },
              controller: angka2,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: 'Angka Kedua'),
            ),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            FloatingActionButton(
                onPressed: () {
                  setState(() {
                    hasil = angkake1 + angkake2;
                  });
                },
                child: const Icon(Icons.add)),
            FloatingActionButton(
                onPressed: () {
                  setState(() {
                    hasil = angkake1 - angkake2;
                  });
                },
                child: const Icon(Icons.remove)),
            FloatingActionButton(
                onPressed: () {
                  setState(() {
                    hasil = angkake1 * angkake2;
                  });
                },
                child: Text('X')),
            FloatingActionButton(
                onPressed: () {
                  setState(() {
                    hasil = angkake1 / angkake2;
                  });
                },
                child: Text('/')),
          ]),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 50.0,
              vertical: 25,
            ),
            child: TextField(
              keyboardType: TextInputType.number,
              cursorColor: Colors.tealAccent,
              enabled: false,
              //enableInteractiveSelection: false,
              decoration: InputDecoration(
                fillColor: Colors.white,
                hintText: 'Hasil: $hasil',
                hintStyle: TextStyle(color: Colors.red),
                border: OutlineInputBorder(),
              ),
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Container(
              height: 35,
              width: 100,
              child: ElevatedButton(
                child: Text('Edit Nama'),
                onPressed: () async {
                  final result = await Navigator.push(context,
                      MaterialPageRoute(builder: (context) => EditNama()));
                  setState(() {
                    widget.name = result;
                  });
                },
              ),
            ),
          )
        ]),
      ),
    );
  }
}
