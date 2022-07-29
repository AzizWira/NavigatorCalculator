import 'package:flutter/material.dart';
import 'package:flutter_application_2/kalkulator.dart';

class EditNama extends StatefulWidget {
  const EditNama({Key? key}) : super(key: key);

  @override
  State<EditNama> createState() => _EditNamaState();
}

class _EditNamaState extends State<EditNama> {
  TextEditingController ctrNama = new TextEditingController();

  Widget txtInput(String username, TextEditingController controller) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: username,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Edit Kontak"),
        ),
        body: Container(
            margin: EdgeInsets.all(15),
            child: Column(children: [
              txtInput("nama", ctrNama),
              SizedBox(
                height: 15,
              ),
              Container(
                width: 120,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context, ctrNama.text);
                    },
                    child: Text("Lanjut")),
              )
            ])));
  }
}
