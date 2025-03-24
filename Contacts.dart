import 'package:flutter/material.dart';
import 'package:flutter_exam/main.dart';

class Contacts extends StatefulWidget {
  const Contacts({super.key});

  @override
  _contatctstate createState() => _contatctstate();
}

class _contatctstate extends State<Contacts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            //close page and balik sa mains screen
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Profileheader(),
          contactList(context),
        ]),
      ),
    );
  }
}

Widget Profileheader() {
  return Padding(
    padding: const EdgeInsets.all(20.0),
    child: Row(
      children: [
        const SizedBox(width: 350),
        const CircleAvatar(
          radius: 70.0,
          backgroundImage: AssetImage('assets/hs.jpg'),
        ),
        const SizedBox(
          width: 15.0,
        ),
      ],
    ),
  );
}

Widget contactList(context) {
  return Column(children: [
    Description("Chrissandra bautista"),
    Call("+63 976 456 2314", Icons.phone, Icons.message),
    CallHistory("Call History"),
    CallList("April 27, 14:16", "+63 976 456 2314", "Didn't contact"),
    CallList("April 20, 10:35", "+63 976 456 2314", "Ring 5 Times"),
    CallList("March 05, 19:23", "+63 976 456 2314", "Outgoing 15 mins 12 sec"),
    CallList("Feb 12, 08:03", "+63 976 456 2314", "Incoming 30 sec"),
  ]);
}

Widget Description(String title) {
  return Padding(
    padding: const EdgeInsets.all(20.0),
    child: Container(
      decoration:
          BoxDecoration(borderRadius: BorderRadiusDirectional.circular(10)),
      child: ListTile(
          title: Text(
        title,
        style: TextStyle(fontSize: 25),
      )),
    ),
  );
}

Widget Call(String title, IconData key, IconData? icon) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
    child: Container(
      decoration:
          BoxDecoration(borderRadius: BorderRadiusDirectional.circular(10)),
      child: ListTile(
        title: Text(title, style: TextStyle(fontSize: 20)),
        trailing: Icon(icon, color: const Color.fromARGB(162, 45, 8, 105)),
      ),
    ),
  );
}

Widget CallHistory(String title) {
  return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Container(
          decoration:
              BoxDecoration(borderRadius: BorderRadiusDirectional.circular(10)),
          child: ListTile(
            title: Text(title, style: TextStyle(fontSize: 10)),
          )));
}

Widget CallList(String title, String title2, String subtitle) {
  return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Container(
        decoration: BoxDecoration(
            color: Color.fromARGB(235, 226, 226, 226),
            borderRadius: BorderRadiusDirectional.circular(5)),
        child: Row(children: [
          Column(children: [
            Text(
              title,
              style: TextStyle(fontSize: 11),
            ),
            Text(
              title2,
              style: TextStyle(fontSize: 8),
            )
          ]),
          const SizedBox(width: 600),
          Text(
            subtitle,
            style: TextStyle(fontSize: 11),
          )
        ]),
      ));
}
