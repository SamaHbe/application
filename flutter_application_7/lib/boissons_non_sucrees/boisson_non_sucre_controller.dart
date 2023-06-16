import 'package:flutter_application_7/Model/repas.dart';

class BoissonNonSucreController {
  final List<Repas> li = [
    Repas(name: "Café, thé, tisane", lien: '/Café'),
    Repas(name: "Eaux plates,gazeuses", lien: '/gazeuses'),
    Repas(
        name: "Eaux plates,gazeuses aromatisées peu sucrés",
        lien: '/aromatisées'),
    Repas(
        name: "Eaux plates,gazeuses aromatisées sans sucrés",
        lien: '/sans sucrés'),
  ];
}
