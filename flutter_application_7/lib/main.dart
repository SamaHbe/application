import 'package:fl_chart/fl_chart.dart';
import 'package:flutter_application_7/Oeufs/Brik_frit.dart';
import 'package:flutter_application_7/Oeufs/brik_pomme_terre.dart';
import 'package:flutter_application_7/Oeufs/oeuf_brouill%C3%A9.dart';
import 'package:flutter_application_7/Oeufs/oeuf_en_omelette.dart';
import 'package:flutter_application_7/Oeufs/oeuf_mayonnaise.dart';

import 'package:flutter_application_7/Oeufs/oeufdur.dart';
import 'package:flutter_application_7/Oeufs/omlette_fromage.dart';
import 'package:flutter_application_7/Pain%20et%20Assimil%C3%A9s/biscottes.dart';
import 'package:flutter_application_7/Pain%20et%20Assimil%C3%A9s/cereales_ble.dart';
import 'package:flutter_application_7/Pain%20et%20Assimil%C3%A9s/cerealessecs.dart';
import 'package:flutter_application_7/Pain%20et%20Assimil%C3%A9s/complet.dart';
import 'package:flutter_application_7/Pain%20et%20Assimil%C3%A9s/croissant.dart';
import 'package:flutter_application_7/Pain%20et%20Assimil%C3%A9s/grille.dart';
import 'package:flutter_application_7/Pain%20et%20Assimil%C3%A9s/orge.dart';
import 'package:flutter_application_7/Pain%20et%20Assimil%C3%A9s/son.dart';
import 'package:flutter_application_7/Salade/salade_carotte_bettrave.dart';
import "package:flutter_application_7/Salade/salade_coeur_d'artichaut.dart";
import 'package:flutter_application_7/Salade/salade_concombre.dart';
import 'package:flutter_application_7/Salade/salade_fruit_mer.dart';
import 'package:flutter_application_7/Salade/salade_haricot_vert.dart';
import 'package:flutter_application_7/Salade/salade_lentielles.dart';
import 'package:flutter_application_7/Salade/salade_ni%C3%A7oise.dart';
import 'package:flutter_application_7/Salade/salade_pomme_terre.dart';
import 'package:flutter_application_7/Salade/salade_riz_thon.dart';
import 'package:flutter_application_7/Salade/salade_russe_vinaigrette.dart';
import 'package:flutter_application_7/Salade/salade_tomate.dart';
import 'package:flutter_application_7/Salade/salade_tunisienne_vinaigrette.dart';
import 'package:flutter_application_7/Salade/salade_verte.dart';
import 'package:flutter_application_7/accueil.dart';
import 'package:flutter_application_7/boissons_non_sucrees/aromatisees.dart';
import 'package:flutter_application_7/boissons_non_sucrees/cafe.dart';
import 'package:flutter_application_7/boissons_non_sucrees/eaux.dart';
import 'package:flutter_application_7/boissons_non_sucrees/sanssucre.dart';
import 'package:flutter_application_7/boissons_sucrees/carotte.dart';
import 'package:flutter_application_7/boissons_sucrees/citronnade.dart';
import 'package:flutter_application_7/boissons_sucrees/jusfruits.dart';
import 'package:flutter_application_7/boissons_sucrees/orange.dart';
import 'package:flutter_application_7/boissons_sucrees/sodas.dart';
import 'package:flutter_application_7/boissons_sucrees/tomate.dart';
import 'package:flutter_application_7/charcuteries/jambon.dart';
import 'package:flutter_application_7/charcuteries/merguez.dart';
import 'package:flutter_application_7/charcuteries/osben.dart';
import 'package:flutter_application_7/charcuteries/salami.dart';
import 'package:flutter_application_7/creux_sales/amande.dart';
import 'package:flutter_application_7/creux_sales/biscuits_sales.dart';
import 'package:flutter_application_7/creux_sales/cacahuetes.dart';
import 'package:flutter_application_7/creux_sales/chips.dart';
import 'package:flutter_application_7/creux_sales/cornichons.dart';
import 'package:flutter_application_7/creux_sales/cubes_fromages.dart';
import 'package:flutter_application_7/creux_sucres/barre_chocolat.dart';
import 'package:flutter_application_7/creux_sucres/biscuit_fourres.dart';
import 'package:flutter_application_7/creux_sucres/biscuit_secs.dart';
import 'package:flutter_application_7/creux_sucres/biscuits_chocolates.dart';
import 'package:flutter_application_7/creux_sucres/bonbons.dart';
import 'package:flutter_application_7/creux_sucres/chocolats.dart';
import 'package:flutter_application_7/creux_sucres/cookies.dart';
import 'package:flutter_application_7/creux_sucres/madeleine.dart';
import 'package:flutter_application_7/creux_sucres/mini_feuilletes.dart';
import 'package:flutter_application_7/creux_sucres/petit_beurre.dart';
import 'package:flutter_application_7/creux_sucres/petits_four.dart';
import 'package:flutter_application_7/datapatient.dart';
import 'package:flutter_application_7/desserts/abricots.dart';
import 'package:flutter_application_7/desserts/banane.dart';
import 'package:flutter_application_7/desserts/clementine.dart';
import 'package:flutter_application_7/desserts/datte.dart';
import 'package:flutter_application_7/desserts/fraise.dart';
import 'package:flutter_application_7/desserts/grenade.dart';
import 'package:flutter_application_7/desserts/kiwi.dart';
import 'package:flutter_application_7/desserts/orange.dart';
import 'package:flutter_application_7/desserts/peche.dart';
import 'package:flutter_application_7/desserts/poire.dart';
import 'package:flutter_application_7/desserts/pomme.dart';
import 'package:flutter_application_7/desserts/raisin.dart';
import 'package:flutter_application_7/desserts/ramequin.dart';
import 'package:flutter_application_7/glaces/caramel.dart';
import 'package:flutter_application_7/glaces/mousse.dart';
import 'package:flutter_application_7/glaces/patissiere.dart';
import 'package:flutter_application_7/glaces/zgougou.dart';
import 'package:flutter_application_7/glaces/zgougou_sans_decoration.dart';
import 'package:flutter_application_7/glycemie.dart';
import 'package:flutter_application_7/listepatient.dart';
import 'package:flutter_application_7/authentification/mdpoublier.dart';
import 'package:flutter_application_7/Pain%20et%20Assimil%C3%A9s/pain.dart';
import 'package:flutter_application_7/patisserie.dart';
import 'package:flutter_application_7/boisson_sucre.dart';

import 'package:flutter_application_7/boisson_non_sucre.dart';
import 'package:flutter_application_7/authentification/create_med.dart';
import 'package:flutter_application_7/authentification/create_patient.dart';
import 'package:flutter_application_7/creux_sales.dart';
import 'package:flutter_application_7/creux_sucres/creux_sucres.dart';
import 'package:flutter_application_7/desserts/desserts.dart';
import 'package:flutter_application_7/glaces/entrements_glaces.dart';
import 'package:flutter_application_7/choix.dart';
import 'package:flutter_application_7/categories.dart';
import 'package:flutter_application_7/Oeufs/oeufs.dart';
import 'package:flutter_application_7/patisseries/baklawa.dart';
import 'package:flutter_application_7/patisseries/crepe.dart';
import 'package:flutter_application_7/patisseries/gateau.dart';
import 'package:flutter_application_7/patisseries/kaak.dart';
import 'package:flutter_application_7/patisseries/makroudh.dart';
import 'package:flutter_application_7/patisseries/mille.dart';
import 'package:flutter_application_7/patisseries/mkharek.dart';
import 'package:flutter_application_7/patisseries/youyou.dart';
import 'package:flutter_application_7/plats_com.dart';
import 'package:flutter_application_7/produits_sucres.dart';
import 'package:flutter_application_7/restauration_rapide.dart';
import 'package:flutter_application_7/Salade/salades.dart';
import 'package:flutter_application_7/restauration_rapide/cheese_burger.dart';
import 'package:flutter_application_7/restauration_rapide/crepe_jambon_fromage.dart';
import 'package:flutter_application_7/restauration_rapide/crepe_thon_fromage.dart';
import 'package:flutter_application_7/restauration_rapide/croque_monsieur.dart';
import 'package:flutter_application_7/restauration_rapide/fricasse.dart';
import 'package:flutter_application_7/restauration_rapide/frite.dart';
import 'package:flutter_application_7/restauration_rapide/hamburger.dart';
import 'package:flutter_application_7/restauration_rapide/panini.dart';
import 'package:flutter_application_7/restauration_rapide/pate.dart';
import 'package:flutter_application_7/restauration_rapide/pizza_mini.dart';
import 'package:flutter_application_7/restauration_rapide/pizza_restau.dart';
import 'package:flutter_application_7/restauration_rapide/quiche.dart';
import 'package:flutter_application_7/restauration_rapide/sandwich_esc_sansfrites.dart';
import 'package:flutter_application_7/restauration_rapide/sandwich_jambon_fromage.dart';
import 'package:flutter_application_7/restauration_rapide/sandwich_mlaoui.dart';
import 'package:flutter_application_7/restauration_rapide/sandwich_thon.dart';
import 'package:flutter_application_7/authentification/se_connecter_medecin.dart';
import 'package:flutter_application_7/authentification/se_connecter_patient.dart';
import 'package:flutter_application_7/soupes%20et%20potages/broudou_legumes.dart';
import 'package:flutter_application_7/soupes%20et%20potages/broudou_pomme_de_terre.dart';
import "package:flutter_application_7/soupes%20et%20potages/chorba_longue_d'oiseau.dart";
import 'package:flutter_application_7/soupes%20et%20potages/chorba_orge.dart';
import 'package:flutter_application_7/soupes%20et%20potages/makarouna_jaria.dart';
import 'package:flutter_application_7/soupes et potages/soupes_potages.dart';
import 'package:flutter_application_7/viandes/boeuf_bifteck.dart';
import 'package:flutter_application_7/viandes/boeuf_entrecote_grille.dart';

import 'package:flutter_application_7/composes/bolonaise.dart';
import 'package:flutter_application_7/composes/couscousl.dart';
import 'package:flutter_application_7/composes/couscoussans.dart';
import 'package:flutter_application_7/composes/lablabi.dart';
import 'package:flutter_application_7/composes/lasagne.dart';
import 'package:flutter_application_7/composes/riz.dart';
import 'package:flutter_application_7/composes/sgaghetti.dart';

import 'package:flutter_application_7/viandes/brochettes_boeuf.dart';
import 'package:flutter_application_7/viandes/cotlette_agneau.dart';
import 'package:flutter_application_7/viandes/cotlette_veau.dart';
import 'package:flutter_application_7/viandes/escalope_veau.dart';
import 'package:flutter_application_7/viandes/escalope_veau_panné.dart';
import 'package:flutter_application_7/viandes/escalope_veau_panné.dart';

import 'package:flutter_application_7/Salade/quantite.dart';
import 'package:flutter_application_7/ajouteraliment/ajouteraliment.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_application_7/viandes/viandes_abats.dart';
import 'Pain et Assimilés/baguette.dart';
import 'firebase_options.dart';
import 'package:provider/provider.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Choix(),
      routes: {
        '/Ajouteraliment': (context) => ajouteraliment(),
        '/glycemie': (context) => Glycemie(),
        '/patisseuries': (context) => const Patisserie(),

        '/desserts': (context) => const desserts(),
        '/entrements_glaces': (context) => const entrements_glaces(),
        '/produit_sucres': (context) => const produit_sucres(),
        '/creux_salés': (context) => const creux_sales(),
        '/creux_sucrés': (context) => const creux_sucres(),
        '/restauration_rapide': (context) => const res_rapide(),
        '/boisons_sucré': (context) => const BoissonsSucre(),
        '/boissons_non_sucré': (context) => const BoissonsNonSucree(),
        '/pain': (context) => const Pain(),
        '/viandes_abats': (context) => const viandesAbats(),
        '/oeufs': (context) => const oeufs(),
        '/plats_ com': (context) => const plats(),
        '/soupes_potages': (context) => const soupes(),
        '/categories': (context) => const myPage(),
        '/quantite': (context) => Quantite(),
        '/se_connecter_medecin': (context) => Seconnectermed(),
        '/create_med': (context) => const CreateMed(),
        '/create_patient': (context) => const CreatePat(),
        '/calcule': (context) => const myPage(),
        '/salades': (context) => const salades(),
        '/zgougou_sans': (context) => zgougousd(),
        '/accueil': (context) => MakeDashboardItems(),
        '/oeufdur': (context) => Oeufdur(),
        '/mdpoublier': (context) => oublier(),
        '/listepatient': (context) => MedecinHomePage(),
        '/salde_fruit_mer': (context) => SaladeFruitMer(),
        '/salade_lentielles': (context) => SaladeLentielles(),
        '/salade_riz_thon': (context) => SaladeRizThon(),
        '/salade_pomme_terre': (context) => SaladePommeTerre(),
        '/salade_concombre': (context) => SaladeConcombre(),
        '/salade_carotte_bettrave': (context) => SaladeCarotte(),
        "/salade_haricot_vert": (context) => SaladeHaricot(),
        "/salade_niçoise": (context) => SaladeNicoise(),
        "/salade_russe_vinaigrette": (context) => SaladeRusse(),
        "/salade_tomate": (context) => SaladeTomate(),
        "/salade_coeur_d'artichaut": (context) => SaladeCoeur(),
        '/salade_verte': (context) => SaladeVert(),
        '/salade_tunisienne_vinaigrette': (context) => SaladeTunisienne(),
        '/Brik_frit': (context) => BrikFrit(),
        '/brik_pomme_terre': (context) => BrikPommeTerre(),
        '/oeuf_brouillé': (context) => OeufBrouille(),
        '/oeuf_en_omelette': (context) => OeufEnOmelette(),
        '/oeuf_mayonnaise': (context) => OeufMayonnaise(),
        '/omlette_fromage': (context) => OeufFromage(),
        '/broudou_legumes': (context) => BroudouLegumes(),
        '/broudou_pomme_de_terre': (context) => BroudouPomme(),
        "/chorba_longue_d'oiseau": (context) => Chorbalangue(),
        '/chorba_orge': (context) => Chorbaorge(),
        '/makarouna_jaria': (context) => MakrounaJaria(),
        '/Crêpejambon': (context) => CrepeJambonFromage(),
        '/Crêpethon': (context) => CrepeThonFromage(),
        '/Croque-monsieur': (context) => CroqueMonsieur(),
        '/Cheese burger': (context) => CheeseBurger(),
        '/Fricassé': (context) => Fricasse(),
        '/Frite': (context) => Frite(),
        '/Hamburger': (context) => Hamburger(),
        '/Quiche': (context) => Quiche(),
        '/Panini': (context) => Panini(),
        '/pâté': (context) => Pate(),
        '/Pizza de restaurant': (context) => PizzaRestau(),
        '/Pizza mini': (context) => PizzaMini(),
        '/Sandwich thon': (context) => SandwichThon(),
        '/Sandwich escalope sans frites': (context) => SandwichEscSansfrites(),
        '/Sandwich jambon/fromage': (context) => SandwichJambonFromage(),
        '/Sandwich mlaoui': (context) => SandwichMlaoui(),
        '/Barre de chocolat': (context) => BarreChocolat(),
        '/Biscuits chocolatés': (context) => BiscuitsChocolates(),
        '/Biscuits fourrés': (context) => BiscuitFourres(),
        '/Biscuits secs': (context) => BiscuitSecs(),
        '/Bonbons': (context) => Bonbons(),
        '/Chocolats': (context) => Chocolats(),
        '/Cookies': (context) => Cookies(),
        '/Madeleine': (context) => Madeleine(),
        '/mini-feuilletés ': (context) => MiniFeuilletes(),
        '/Petits-four sucrés': (context) => PetitsFour(),
        '/Petit beurre': (context) => PetitBeurre(),
        '/Amande': (context) => Amande(),
        '/Biscuits_salés': (context) => BiscuitsSales(),
        '/Cacahuétes': (context) => Cacahuetes(),
        '/Chips': (context) => Chips(),
        '/Cornichons': (context) => Cornichons(),
        '/Cubes fromages': (context) => CubesFromages(),
        /*'/Noisettes ': (context) => PetitBeurre(),
        '/Noix de cajou ': (context) => PetitBeurre(),
        '/Noix ': (context) => PetitBeurre(),*/
        '/Café': (context) => Cafe(),
        '/gazeuses': (context) => eaux(),
        '/aromatisées': (context) => Aromatisees(),
        '/sans sucrés': (context) => Sanssucre(),
        '/Jambon': (context) => Jambon(),
        '/Merguez': (context) => Merguez(),
        '/Osben': (context) => Osben(),
        '/Salami': (context) => Salami(),
        '/Baguette': (context) => Baguette(),
        '/Biscottes': (context) => Biscottes(),
        '/Céréalesblé': (context) => CerealesBle(),
        '/Céréalessecs': (context) => Cerealessecs(),
        '/Croissant': (context) => Croissant(),
        '/Pain complet': (context) => Complet(),
        '/Pain au son': (context) => Son(),
        '/Pain au orge': (context) => Orge(),
        '/Pain grillé': (context) => Grille(),
        '/Citronade': (context) => Citronnade(),
        '/fruits': (context) => Jusfruits(),
        '/carotte': (context) => Carotte(),
        '/tomate': (context) => Tomate(),
        //"/d'orange": (context) => jOrange(),
        '/Sodas': (context) => Sodas(),
        '/Abricots': (context) => Abricots(),
        '/Banane': (context) => Banane(),
        '/Clémentines': (context) => Clementine(),
        '/Datte': (context) => Datte(),
        '/Fraises': (context) => Fraise(),
        '/Grenade': (context) => Grenade(),
        '/Kiwi': (context) => Kiwi(),
        '/Pèche': (context) => Peche(),
        // '/Orange': (context) => Orange(),
        '/Pomme': (context) => Pomme(),
        '/Poire': (context) => Poire(),
        // '/Raisin': (context) => Raisin(),
        '/Ramequin': (context) => Ramequin(),
        '/zgougou_sans': (context) => zgougousd(),
        '/zgougou': (context) => Zgougou(),
        '/caramel': (context) => Caramel(),
        '/pàtissière': (context) => Patissiere(),
        '/Mousse': (context) => Mousse(),
        '/Baklawa': (context) => Baklawa(),
        '/Crépe': (context) => Crepe(),
        '/Gateau': (context) => Gateau(),
        '/Kaak': (context) => Kaak(),
        '/Makroudh': (context) => Makroudh(),
        '/Mkharek': (context) => Mkharek(),
        '/Mille': (context) => Mille(),
        '/Youyou': (context) => Youyou(),
        '/boeuf_bifteck': (context) => BoeufBifteck(),
        '/boeuf_entrecote_grille': (context) => BoeufEntrecote(),
        '/brochettes_boeuf': (context) => BoulettesBoeuf(),
        '/cotlette_agneau': (context) => CotlettesAgneau(),
        '/cotlette_veau': (context) => CotlettesVeau(),
        '/escalope_veau_panné': (context) => EscalopeVeau(),
        '/escalope_veau': (context) => Escalope(),

        '/avec': (context) => Couscousl(),
        '/sans': (context) => Couscoussans(),
        '/Lablabi': (context) => Lablabi(),
        '/Lassagne': (context) => Lasagne(),
        '/Riz': (context) => Riz(),
        '/bolonaise': (context) => Bolonaise(),
        '/Spaghetti': (context) => Sgaghetti(),
      },
    );
  }
}
