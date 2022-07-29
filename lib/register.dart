import 'package:flutter/material.dart';
import 'package:flutter_application_2/kalkulator.dart';

class Registrasi extends StatefulWidget {
  const Registrasi({Key? key}) : super(key: key);

  @override
  State<Registrasi> createState() => _RegistrasiState();
}

class _RegistrasiState extends State<Registrasi> {
  TextEditingController ctrUsername = new TextEditingController();
  TextEditingController ctrNama = new TextEditingController();


Widget txtInput(String username, TextEditingController controller){
  return TextField(
    controller: controller,
    decoration: InputDecoration(
      border: OutlineInputBorder(),
      labelText: username,
    ),
  );
}

Widget btnRegister(String text){
  return Container(
    width: 120,
    child: ElevatedButton(onPressed: (){
      Navigator.push(
        context, MaterialPageRoute(builder: (context)=> Kalkulator(name: ctrNama.text, kata: ctrUsername.text,)));
    }, child: Text(text)),
  );
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Registrasi"),),
      body: Container(
        margin: EdgeInsets.all(15),
        child: Column(
          children: [
            txtInput("nama", ctrNama),
            SizedBox(
              height: 20,
              ),
              txtInput("Kata Kata Hari Ini", ctrUsername),
            SizedBox(
              height: 20,
              ),
            btnRegister("submit"),
          ],
        ),
      ),
    );
  }
}