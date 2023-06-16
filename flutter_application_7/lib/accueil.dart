import 'package:flutter/material.dart';
import 'package:flutter_application_7/Courbe.dart';
import 'package:flutter_application_7/glycemie.dart';

class MakeDashboardItems extends StatefulWidget {
  const MakeDashboardItems({Key? key}) : super(key: key);

  @override
  _MakeDashboardItemsState createState() => _MakeDashboardItemsState();
}

class _MakeDashboardItemsState extends State<MakeDashboardItems> {
  Card makeDashboardItem(String title, String img, int index) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.all(10),
      child: Container(
        decoration: index == 0
            ? BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                gradient: const LinearGradient(
                  begin: FractionalOffset(0.0, 0.0),
                  end: FractionalOffset(10.0, 0.0),
                  colors: [
                    Color(0xF8011638),
                    Color(0xFFffffff),
                  ],
                ),
                boxShadow: const [
                  BoxShadow(
                    color: Color(0xF8011638),
                    blurRadius: 10,
                    offset: Offset(4, 2),
                  )
                ],
              )
            : BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                gradient: const LinearGradient(
                  begin: FractionalOffset(0.0, 0.0),
                  end: FractionalOffset(10.0, 0.0),
                  colors: [
                    Color(0xF8011638),
                    Color(0xFFffffff),
                  ],
                ),
                boxShadow: const [
                  BoxShadow(
                    color: Color(0xF8011638),
                    blurRadius: 10,
                    offset: Offset(4, 2),
                  )
                ],
              ),
        child: InkWell(
          onTap: () {
            if (index == 0) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Glycemie()),
              );

              //1.item
            }
            if (index == 1) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LiveChart()),
              );

              //2.item
            }
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            verticalDirection: VerticalDirection.down,
            children: [
              const SizedBox(height: 30),
              Center(),
              const SizedBox(height: 30),
              Center(
                child: Text(
                  title,
                  style: const TextStyle(
                      fontSize: 25,
                      color: Color.fromARGB(255, 252, 116, 25),
                      fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFEEE4),
      body: Column(
        children: [
          const SizedBox(height: 120),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const <Widget>[
                    Text(
                      "Accueil",
                      style: const TextStyle(
                          fontSize: 30,
                          color: Color.fromARGB(255, 252, 116, 25),
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 50),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              padding: const EdgeInsets.all(2),
              children: [
                makeDashboardItem("Glycémie", "image/glycemie.jpg", 0),
                makeDashboardItem("Courbe", "image/courbe.png", 1),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
