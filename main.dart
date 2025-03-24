import 'package:flutter/material.dart';
import 'package:flutter_exam/Contacts.dart';
import 'package:flutter_exam/addcontact.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const ContactPage(), //show sa home page
    );
  }
}

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contatcs"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 0),
            search(Icons.search),
            Menulist(context),
          ],
        ),
      ),
    );
  }
}

Widget Menulist(context) {
  CrossAxisAlignment.start;
  return Column(
    children: <Widget>[
      MenuItem(Icons.person, "Chrissandra Bautista", "+63 976 456 2314", () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Contacts()));
      }),
      MenuItem(Icons.person, "Josh Nimo", "+63 976 456 2314", () {}),
      MenuItem(Icons.person, "Shgelou Asaria", "+63 976 456 2314", () {}),
      MenuItem(Icons.person, "Ace Advincula", "+63 976 456 2314", () {}),
      MenuItem(Icons.person, "crislyn delgado", "+63 976 456 2314", () {}),
      MenuItem(Icons.person, "Airene Tungol", "+63 976 456 2314", () {}),
      MenuItem(Icons.person, "James Legado", "+63 976 456 2314", () {}),
      MenuItem(Icons.person, "Kharl Almonguerra", "+63 976 456 2314", () {}),
      MenuItem(Icons.person, "Vince Carabuena", "+63 976 456 2314", () {}),
      MenuItem(Icons.person, "Errol De Pedro", "+63 976 456 2314", () {}),
      const SizedBox(height: 10),
      AddContact("                                          +", () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => addcontact()));
      }),
    ],
  );
}

Widget MenuItem(
    IconData icon, String title, String title2, VoidCallback onTap) {
  return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 10),
      child: Container(
          decoration: BoxDecoration(
              color: Color.fromARGB(235, 234, 199, 241),
              borderRadius: BorderRadiusDirectional.circular(10)),
          child: ListTile(
            leading: Icon(icon, color: const Color.fromARGB(206, 58, 2, 44)),
            title:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                title,
                style: TextStyle(fontSize: 12),
              ),
              Text(
                title2,
                style: TextStyle(fontSize: 10),
              ),
            ]),
            trailing: const Icon(Icons.phone, size: 15),
            onTap: onTap,
          )));
}

Widget search(IconData icon) {
  return Padding(
    padding: const EdgeInsets.all(5),
    child: Container(
      child: ListTile(
        trailing: Icon(icon, color: const Color.fromARGB(206, 58, 2, 44)),
      ),
    ),
  );
}

Widget AddContact(String title, VoidCallback onTap) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
    child: Container(
        decoration: BoxDecoration(
            color: Color.fromARGB(179, 124, 136, 248),
            borderRadius: BorderRadiusDirectional.circular(70)),
        child: ListTile(
          title: Text(
            title,
            style: TextStyle(fontSize: 25),
          ),
          onTap: onTap,
        )),
  );
}
