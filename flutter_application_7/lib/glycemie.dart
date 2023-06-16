import 'package:intl/intl.dart';
import 'package:flutter_application_7/showerreurDialog.dart';
import 'package:flutter_application_7/categories.dart';
import 'package:flutter_application_7/Salade/quantite.dart';
import 'package:flutter_application_7/services/authontification.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:awesome_dialog/awesome_dialog.dart';

class Glycemie extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => GlycemieState();
}

class GlycemieState extends State<Glycemie> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  ShowDialog showdialog = ShowDialog();
  Dialog dialog = Dialog();
  @override
  bool _isPressed = false;
  String selectedMeal = '';
  static double ajouter = 0.0;
  String message = "";
  double _selectMeal(
    String meal,
  ) {
    setState(() {
      performCalculation(meal);
      selectedMeal = meal;
    });
    return replaceGlucides;
  }

  double replaceGlucides = 0.0;
  performCalculation(selectedMeal) {
    if (selectedMeal == 'petit déjeuner') {
      return replaceGlucides = 2.0;

      print('Vous avez sélectionné le petit déjeuner.');
    } else if (selectedMeal == 'déjeuner') {
      return replaceGlucides = 1.0;

      print('Vous avez sélectionné le déjeuner.');
    } else if (selectedMeal == 'dîner') {
      return replaceGlucides = 1.5;

      print('Vous avez sélectionné le dîner.');
    }
  }

  final _mesureController = TextEditingController();

  double result = 0.0, number = 0.0;
  void dispose() {
    _mesureController.dispose();
    super.dispose();
  }

  void initFirebase() async {
    await Firebase.initializeApp();
  }

  double ajoutercalcule = 0.0;
  Ajoutercalcule() {
    number = double.parse(_mesureController.text);
    if (number < 1.4) {
      ajoutercalcule = 0.0;
    }
    if (number >= 1.4 && number < 1.7) {
      ajoutercalcule += 1;
    } else if (number >= 1.7 && number < 2) {
      ajoutercalcule += 2;
    } else if (number >= 2 && number < 2.3) {
      ajoutercalcule += 3;
    } else if (number >= 2.3 && number < 2.6) {
      ajoutercalcule += 4;
    } else if (number >= 2.6) {
      ajoutercalcule += 5;
    }
    print("ajouter calcule  $ajoutercalcule");
    // return ajoutercalcule;
  }

  Future<void> addajoutercalcule(double ajoutercalcule) async {
    try {
      await _firestore
          .collection('Patient')
          .doc(userId)
          .collection('AjouterCalcule')
          .doc()
          .set({
        "ajoutercalcule": ajoutercalcule,
      });
    } catch (e) {
      print(e.toString());
    }
  }

  notifier() {
    number = double.parse(_mesureController.text);
    if (number < 0.7 && _isPressed == true) {
      String titre = "Recucrage";
      String errorMessage =
          "Vous devez consommez une \n quantité  de 10 à 15 gramme de sucre";
      String lien = "/categories";
      showdialog.Dialog(context, errorMessage, titre, lien);
    } else if (number > 2.5 && _isPressed == true) {
      String titre = "Cas d'urgance";
      String errorMessage = "Vous devez consulter votre médecin ";
      String lien = "/categories";
      showdialog.Dialog(context, errorMessage, titre, lien);
    } else if (number > 2.5 && _isPressed == false) {
      String titre = "Cas d'urgance";
      String errorMessage =
          "Vous devez consulter votre médecin  et \n Sélectionnez type repas";
      String lien = "/glycemie";
      showdialog.Dialog(context, errorMessage, titre, lien);
    } else if (number < 0.7 && _isPressed == false) {
      String titre = "Recucrage";
      String errorMessage =
          "Vous devez consommez \n une quantité  de 10 à 15 gramme de sucre et \n  Sélectionnez type repas";
      String lien = "/glycemie";
      showdialog.Dialog(context, errorMessage, titre, lien);
    } else if (_isPressed == false) {
      String titre = "Repas";
      String errorMessage = "Sélectionnez type repas";
      String lien = "/glycemie";
      showdialog.Dialog(context, errorMessage, titre, lien);
    }
  }

  Future<void> addajouter(double ajouter) async {
    try {
      await _firestore
          .collection('Patient')
          .doc(userId)
          .collection('choixrepas')
          .doc()
          .set({
        "choixrepas": ajouter,
      });
    } catch (e) {
      print(e.toString());
    }
  }

  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final String userId = FirebaseAuth.instance.currentUser!.uid;

  Future<void> saveValue(double number) async {
    DateTime Date = DateTime.now();
    String dateHeure = DateFormat('dd-MM-yy').format(Date);
    try {
      await _firestore
          .collection('Patient')
          .doc(userId)
          .collection('Glycémie')
          .doc()
          .set({
        "glycemie": number,
        "Date": dateHeure,
      });
    } catch (e) {
      print(e.toString());
    }
  }

  var c = Color(0xff011638);
  var d = Color.fromARGB(255, 252, 116, 25);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Glycémie",
          style: TextStyle(color: Color.fromARGB(255, 252, 116, 25)),
        ),
        backgroundColor: Color(0xff011638),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 110,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(42)),
                    color: Color(0xffFFEEE4),
                  ),
                  height: 400,
                  width: 300,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        'Glycémie',
                        style: TextStyle(
                          fontSize: 30,
                          color: c,
                        ),
                      ),
                      Container(
                        height: 150,
                        width: 250,
                        margin: EdgeInsets.only(top: 15.0),
                        alignment: Alignment.center,
                        child: TextField(
                          controller: _mesureController,
                          decoration: InputDecoration(
                            hintText: '0.0',
                            hintStyle: TextStyle(
                                fontStyle: FontStyle.italic, fontSize: 30),
                            suffixText: 'mg/dL',
                            suffixStyle: TextStyle(
                              fontStyle: FontStyle.italic,
                              fontSize: 30,
                            ),
                          ),
                          keyboardType: TextInputType.number,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            child: const Text('Enregistrer'),
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  Color.fromARGB(255, 252, 116, 25),
                              foregroundColor: Color(0xff011638),
                            ),
                            onPressed: () async {
                              setState(() {
                                addajouter(ajouter);
                                Ajoutercalcule();

                                notifier();
                                addajoutercalcule(ajoutercalcule);
                                saveValue(number);
                                performCalculation(replaceGlucides);

                                if (_isPressed == true) {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => myPage(),
                                    ),
                                  );
                                }
                              });
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 9,
                    ),
                    Container(
                      width: 110,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 252, 116, 25),
                          foregroundColor: Color(0xff011638),
                        ),
                        onPressed: () {
                          setState(() {
                            ajouter = _selectMeal('petit déjeuner');
                            _isPressed = !_isPressed;
                            print(ajouter);
                          });
                        },
                        child: Text(
                          'Petit déjeuner',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 12),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      width: 110,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 252, 116, 25),
                          foregroundColor: Color(0xff011638),
                        ),
                        onPressed: () {
                          setState(() {
                            ajouter = _selectMeal('déjeuner');
                            _isPressed = !_isPressed;
                            print(ajouter);
                          });
                        },
                        child: Text(
                          'Déjeuner',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 12),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      width: 110,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 252, 116, 25),
                          foregroundColor: Color(0xff011638),
                        ),
                        onPressed: () {
                          setState(() {
                            ajouter = _selectMeal('dîner');
                            _isPressed = !_isPressed;
                            print(ajouter);
                          });
                        },
                        child: Text(
                          'Dîner',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 12),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 9,
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
