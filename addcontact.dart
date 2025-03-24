import 'package:flutter/material.dart';
import 'package:flutter_exam/main.dart';

class addcontact extends StatefulWidget {
  const addcontact({super.key});

  @override
  _addcontact createState() => _addcontact();
}

class _addcontact extends State<addcontact> {
  final TextEditingController _fnameController = TextEditingController();
  final TextEditingController _lnameController = TextEditingController();
  final TextEditingController _phonenumber = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Personal Data"),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: SingleChildScrollView(
            padding: EdgeInsets.all(30),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const SizedBox(
                height: 10,
              ),
              buildTextField("First Name", _fnameController),
              buildTextField("Last Name", _lnameController),
              buildTextField("Phone Number", _phonenumber),
              const SizedBox(
                height: 10,
              ),
            ])));
  }

  Widget buildTextField(String label, TextEditingController Controller) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: TextField(
          controller: Controller,
          decoration:
              InputDecoration(labelText: label, border: OutlineInputBorder()),
        ));
  }

  void savedata() {
    String Firstname = _fnameController.text;
    String Lastname = _lnameController.text;
    String Phonenumber = _phonenumber.text;

    print("First Name: $Firstname");
    print("Last Name: $Lastname");
    print("Phone Number: $Phonenumber");
  }
}
