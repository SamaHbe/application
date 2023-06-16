import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter_application_7/ajouterutilisateur.dart';
import 'package:flutter_application_7/authentification/se_connecter_patient.dart';
import 'package:flutter_application_7/services/authontification.dart';
import 'package:flutter_application_7/user.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

class CreatePat extends StatefulWidget {
  const CreatePat({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _CreatePatState();
}

class _CreatePatState extends State<CreatePat> {
  TimeOfDay _timeOfDay = TimeOfDay(hour: 22, minute: 00);
  GlobalKey<FormState> formstate = new GlobalKey<FormState>();

  final nomController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmerpasswordController = TextEditingController();
  final AuthontificationService _auth = AuthontificationService();
  final _formKey1 = GlobalKey<FormState>();
  String error = '';
  String message = '';
  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmerpasswordController.dispose();
  }

  void toggleView() {
    setState(() {
      emailController.text = '';
      passwordController.text = '';
    });
  }

  var c = Color(0xff011638);
  var d = Color.fromARGB(255, 252, 116, 25);
  bool passwordVisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff011638),
        title: const Text(
          'Créer un compte',
          style: TextStyle(
            fontSize: 19.0,
            color: Color.fromARGB(255, 252, 116, 25),
          ),
        ),
      ),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.only(top: 40.0, left: 30.0, right: 30.0),
            // height: 25,
            child: Form(
              key: _formKey1,
              child: Column(
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    validator: (value) =>
                        value!.isEmpty ? "Tapez votre nom " : null,
                    controller: nomController,
                    decoration: InputDecoration(
                      errorBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.red, width: 2.0)),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 2, color: c),
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      labelText: 'Nom',
                      labelStyle: TextStyle(fontSize: 20, color: c),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    validator: (value) =>
                        value!.isEmpty ? "Entrez  un email valide" : null,
                    controller: emailController,
                    decoration: InputDecoration(
                      errorBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.red, width: 2.0)),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 2, color: c),
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      labelText: 'Email',
                      labelStyle: TextStyle(fontSize: 20, color: c),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    validator: (value) => value!.length < 6
                        ? "entrez un mot de passe qui depasse 6 caractére"
                        : null,
                    controller: passwordController,
                    decoration: InputDecoration(
                      errorBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.red, width: 2.0)),
                      // border: OutlineInputBorder(),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 2, color: c),
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      suffixIcon: IconButton(
                        icon: Icon(passwordVisible
                            ? Icons.visibility
                            : Icons.visibility_off),
                        color: c,
                        onPressed: () {
                          setState(() {
                            passwordVisible = !passwordVisible;
                          });
                        },
                      ),
                      labelText: ' Mot de Passe',
                      labelStyle: TextStyle(fontSize: 20, color: c),
                    ),
                    obscureText: passwordVisible,
                    keyboardType: TextInputType.visiblePassword,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(10, 30, 10, 6),
                    width: 300,
                    child: ElevatedButton(
                      onPressed: () async {
                        if (_formKey1.currentState!.validate()) {
                          setState(() {});
                          var password = passwordController.value.text;
                          var email = emailController.value.text;
                          var nom = nomController.value.text;
                          var confirmpassword =
                              confirmerpasswordController.value.text;

                          dynamic result = _auth.registerWithEmailAndPassword(
                              email, password, nom);
                          dynamic verif = _auth.verifyEmail();

                          if (result != null && verif != null) {
                            error = 'vous avez reçus un email de confirmation';
                            // addData();

                            Future.delayed(Duration(seconds: 3), () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SeconnecterPatient(),
                                ),
                              );
                            });
                          }
                        }

                        /* if (verifyEmail()) {
                          error = "vous avez reçus un email de confirmation";
                        } else if (verifyEmail() == true) {
                          Navigator.pushNamed(context, '/acceuil');
                        }*/
                        // Navigator.pushNamed(context, '/se_connecter_patient');
                        // SignUp();

                        // passwordController.text = '';
                        //},

                        /* if (!(passwordController.text.trim() ==
                            confirmerpasswordController.text.trim())) {
                          AwesomeDialog(
                            context: context,
                            dialogType: DialogType.info,
                            animType: AnimType.rightSlide,
                            title: 'Opps',
                            desc: 'essayer de valider votre mot de passe',
                            //btnCancelOnPress: () {},
                            btnOkOnPress: () {
                              Color:
                              d;
                              Title:
                              " se conncter";
                              Navigator.pushNamed(
                                  context, '/se_connecter_patient');
                            },
                          )..show();
                        } else {*/
                        /* dynamic verif = _auth.verifyEmail();
                        if (result != null) {
                          error = 'vous avez reçus un email de confirmation';
                        } */
                      },
                      child: const Text(
                        'Créer',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: Color(0xFF011638)),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 252, 116, 25),
                        shape: StadiumBorder(),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(error,
                      style: TextStyle(
                          color: d, fontSize: 15, fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: 10,
                  ),

                  /*  SizedBox(
                    height: 10,
                  ),
                  Text(message,
                      style: TextStyle(
                          color: d, fontSize: 15, fontWeight: FontWeight.bold)),*/
                  /*  GestureDetector(
                  onTap: SignUp,
                  child: Container(
                    padding: EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      color: d,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center(
                      child: const Text(
                        'créer',
                        style: TextStyle(
                            fontWeight: FontWeight.w300, fontSize: 30),
                      ),
                    ),
                  ),
                ),*/
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
//}
