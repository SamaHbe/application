import 'package:flutter_application_7/Model/info.dart';

class MyPageController {
  List<Info> getInfoList() {
    return [
      Info(
          name: "Salades",
          image:
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTtx-9rFNmdqJmAAQW4Grn_k8xwYRwIEcSxRA&usqp=CAU",
          lientype: '/salades'),
      Info(
          name: "Soupes et Potages",
          image:
              "https://static.750g.com/images/1200-630/7b5fa7039081bbe793b35be00378d729/adobestock-274865238.jpeg",
          lientype: '/soupes_potages'),
      Info(
          name: "Oeufs",
          image:
              "https://www.bienmanger.com/tinyMceData/images/contents/851/content_lg.jpg",
          lientype: '/oeufs'),
      Info(
          name: "Plats Composés",
          image:
              "https://media-cdn.tripadvisor.com/media/photo-s/1c/f6/7f/49/ensemble-de-plat-propose.jpg",
          lientype: '/plats_ com'),
      Info(
          name: "viandes et abats",
          image:
              "https://media.ooreka.fr/public/image/conserver-viande-main-12348878.jpg",
          lientype: '/viandes_abats'),
      Info(
          name: "Charcuteries",
          image:
              "https://www.ilristorante.fr/wp-content/uploads/2022/08/piatto-con-mortadella-scaled.jpeg",
          lientype: '/charcuteries'),
      Info(
          name: "Desserts",
          image:
              "https://www.pourquoidocteur.fr/media/article/COPY_istock-529664572-1674231819.jpg",
          lientype: '/desserts'),
      Info(
          name: "Patisserie",
          image:
              "https://www.lexpress.fr/resizer/nmyZ4h91e89_5Leiyfm-JWxy6Tg=/970x548/cloudfront-eu-central-1.images.arcpublishing.com/lexpress/OP4A7CF4WVDOXBHMMLN3ON2OBU.jpg",
          lientype: '/patisseuries'),
      Info(
          name: "Pain et Assimilés",
          image: "https://i.notretemps.com/1800x0/smart/2022/10/07/pains.jpg",
          lientype: '/pain'),
      Info(
          name: "Boissons Sucrés ou Edulcorées",
          image:
              "https://www.clcv.org/storage/app/uploads/public/3c9/4f6/4b0/thumb__800_0_0_0_crop.jpg",
          lientype: '/boisons_sucré'),
      Info(
          name: "Eaux ou Boisson non sucrées",
          image:
              "https://img.passeportsante.net/1200x675/2021-05-06/i106414-bienfaits-de-la-tisane.webp",
          lientype: '/boissons_non_sucré'),
      Info(
          name: "Petits Creux Salés",
          image: "https://petitscreux.corsica/og-image2.jpg",
          lientype: '/creux_salés'),
      Info(
          name: "Petits Creux Sucrés",
          image:
              "https://odelices.ouest-france.fr/images/articles/px-petit-dejeuner-3137152_1920-contatoartpix.jpg",
          lientype: '/creux_sucrés'),
      Info(
          name: "Restauration rapide",
          image:
              "https://paysdesaintjeandemonts.fr/content/uploads/2020/02/fastfood-restaurant-vendee2.jpg",
          lientype: '/restauration_rapide'),
      Info(
          name: "entrements glaces",
          image:
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ_2VH9vqoDWJKenLpxd7ZjrBgVx5QnWCSmFA&usqp=CAU",
          lientype: '/entrements_glaces'),
    ];
  }
}
