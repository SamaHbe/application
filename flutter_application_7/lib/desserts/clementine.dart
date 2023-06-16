import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_application_7/ajouteraliment/ajouteraliment.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:flutter/material.dart';

class Clementine extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => ClementineState();
}

class ClementineState extends State<Clementine> {
  final _valeurcontroller = TextEditingController();

  double replaceGlucides = 0.0;
  double number = 0.0;
  double result = 0.0;
  double finalResult = 0.0;

  void calculateur() {
    number = double.parse(_valeurcontroller.text);
    setState(() {
      result = (number * 20 / 3);
    });
  }

  var c = Color.fromARGB(255, 252, 116, 25);
  var d = Color(0xff011638);
  double val = 0.0;
  valCircle(result) {
    val = result * 0.005;
    return val;
  }

  double lipides = 0.0;
  Lipides(double number) {
    setState(() {
      lipides = ((number * 0) / 1);
    });
    return lipides;
  }

  @override
  void initState() {
    super.initState();
  }

  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final String userId = FirebaseAuth.instance.currentUser!.uid;

  // Méthode pour enregistrer la valeur dans la sous-collection
  String Date =
      "${DateTime.now().day}/${DateTime.now().month}/${DateTime.now().year}";
  Future<void> savedata(String name, double quantity, double quantity2) async {
    try {
      await _firestore
          .collection('Patient')
          .doc(userId)
          .collection('Repas')
          .doc()
          .set({
        "name": name,
        "glucide": quantity.toStringAsFixed(0),
        "Lipide": quantity2.toStringAsFixed(0),
        //"insuline": insulineresult,
        "Date": Date,
      });
    } catch (e) {
      // Gérer les erreurs d'enregistrement
      print(e.toString());
    }
  }

  String name = "Clémentine, Mandarine";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff011638),
        title: Text(
          "$name ",
          style:
              TextStyle(fontSize: 18, color: Color.fromARGB(255, 252, 116, 25)),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Container(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    'Nombre de pièces: ',
                    style: TextStyle(
                      fontSize: 20,
                      color: d,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Container(
                  //height: 80,
                  width: 300,
                  alignment: Alignment.bottomLeft,
                  child: TextField(
                    //padding: EdgeInsets.all(16.0),
                    controller: _valeurcontroller,
                    decoration: InputDecoration(
                      hintText: ' Quantité ',
                      hintStyle:
                          TextStyle(fontStyle: FontStyle.italic, fontSize: 20),
                      suffixStyle: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontSize: 40,
                      ),
                    ),
                    keyboardType: TextInputType.number,
                  ),
                ),
                SizedBox(
                  width: 12,
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              width: 220,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: c,
                  shape: StadiumBorder(),
                ),
                child: const Text(
                  'Enregistrer',
                  style: TextStyle(
                    fontSize: 20,
                    color: Color(0xff011638),
                  ),
                ),
                onPressed: () async {
                  setState(() {
                    calculateur();
                    Lipides(number);
                    savedata(name, result, lipides);

                    Future.delayed(Duration(seconds: 3), () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ajouteraliment(),
                        ),
                      );
                    });

                    // finalResult = insuline(result, widget.ajouter!);
                  });
                },
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              child: Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 250,
                    alignment: Alignment.bottomCenter,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(42)),
                      color: Color(0xffFFEEE4),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        Image.network(
                          "https://cdn-icons-png.flaticon.com/512/2396/2396713.png",
                          height: 50,
                          width: 50,
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        CircularPercentIndicator(
                          footer: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Text("Glucides (g)",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 252, 116, 25),
                                  fontSize: 15,
                                )),
                          ),
                          animation: true,
                          animationDuration: 1050,
                          radius: 40,
                          lineWidth: 10.0,
                          percent: valCircle(result),
                          progressColor: Color.fromARGB(255, 252, 116, 25),
                          backgroundColor: Color(0xF8011638),
                          circularStrokeCap: CircularStrokeCap.round,
                          center: Text("${result.toStringAsFixed(0)}",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 252, 116, 25),
                                  fontSize: 20)),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  /* CircularPercentIndicator(
                    footer:
                        Text("Insuline", style: TextStyle(color: c, fontSize: 15)),
                    animation: true,
                    animationDuration: 1050,
                    radius: 45,
                    lineWidth: 12.0,
                    percent: valCircle(result),
                    progressColor: Color(0xFFCE6D39),
                    backgroundColor: Color(0xF8011638),
                    circularStrokeCap: CircularStrokeCap.round,
                    center: Text(
                      "$insulineresult",
                      style: TextStyle(fontSize: 20, color: d),
                    ),
                  ),*/

                  Container(
                    alignment: Alignment.bottomCenter,
                    height: 250,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(42)),
                      color: Color(0xffFFEEE4),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        Image.network(
                          "https://cdn-icons-png.flaticon.com/512/4264/4264699.png",
                          height: 50,
                          width: 50,
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        CircularPercentIndicator(
                          footer: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Text("Lipides (g)",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 252, 116, 25),
                                    fontSize: 15)),
                          ),
                          animation: true,
                          animationDuration: 1050,
                          radius: 40,
                          lineWidth: 10.0,
                          percent: valCircle(result),
                          progressColor: Color.fromARGB(255, 252, 116, 25),
                          backgroundColor: Color(0xF8011638),
                          circularStrokeCap: CircularStrokeCap.round,
                          center: Text(
                            "${lipides.toStringAsFixed(0)}",
                            style: TextStyle(fontSize: 20, color: c),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
