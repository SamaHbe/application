import 'package:flutter/material.dart';
import 'package:flutter_application_7/Model/repas.dart';
import 'package:flutter_application_7/viandes/viandes_abats_controller.dart';

class viandesAbats extends StatefulWidget {
  const viandesAbats({super.key});

  @override
  _viandesAbatsState createState() => _viandesAbatsState();
}

class _viandesAbatsState extends State<viandesAbats> {
  final ViandesAbatsController _controller = ViandesAbatsController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff011638),
        title: const Text(
          "Créer mon repas ",
          style:
              TextStyle(fontSize: 18, color: Color.fromARGB(255, 252, 116, 25)),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(5.0),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              ..._controller.li.map((val) {
                return SizedBox(
                  width: double.infinity,
                  height: 90,

                  child: Card(
                    elevation: 8,
                    color: Colors.white,
                    child: TextButton(
                      child: Column(
                        children: <Widget>[
                          ListTile(
                            title: Text(
                              val.name,
                              style: const TextStyle(
                                  fontSize: 15,
                                  color: Color(0xff011638),
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, val.lien);
                      },
                    ),
                  ),
                  // ),
                );
              }).toList(),
            ],
          ),
        ),
      ),
    );
  }
}
