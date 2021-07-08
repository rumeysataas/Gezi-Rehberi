import 'package:flutter/material.dart';
import 'package:image_slider/image_slider.dart';

class Konya extends StatefulWidget {
  const Konya({Key? key}) : super(key: key);

  @override
  _KonyaState createState() => _KonyaState();
}

class _KonyaState extends State<Konya> with SingleTickerProviderStateMixin {
  void initState() {
    super.initState();
    tabController = TabController(length: 8, vsync: this);
  }

  TabController? tabController;

  static List<String> links = [
    "assets/images/konya.jpeg",
    "assets/images/konya1.jpeg",
    "assets/images/konya2.jpeg",
    "assets/images/k1.jpeg",
    "assets/images/k2.jpeg",
    "assets/images/k3.jpeg",
    "assets/images/k4.jpeg",
    "assets/images/k5.jpeg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              ImageSlider(
                /// Shows the tab indicating circles at the bottom
                showTabIndicator: true,

                /// Cutomize tab's colors
                tabIndicatorColor: Colors.lightBlue.shade100,

                /// Customize selected tab's colors
                tabIndicatorSelectedColor: Colors.lightBlue.shade500,

                /// Height of the indicators from the bottom
                tabIndicatorHeight: 9,

                /// Size of the tab indicator circles
                tabIndicatorSize: 9,

                /// tabController for walkthrough or other implementations
                tabController: tabController,

                /// Animation curves of sliding
                curve: Curves.fastOutSlowIn,

                /// Width of the slider
                width: MediaQuery.of(context).size.width,

                /// Height of the slider
                height: 220,

                /// If automatic sliding is required
                autoSlide: true,

                /// Time for automatic sliding
                duration: new Duration(seconds: 3),

                /// If manual sliding is required
                allowManualSlide: true,

                /// Children in slideView to slide
                children: links.map((String link) {
                  return new ClipRRect(

                      child: Image.asset(
                        link,
                        width: MediaQuery.of(context).size.width,
                        height: 220,
                        fit: BoxFit.fill,
                      ));
                }).toList(),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12),
                child: Text(
                  "GONYA",
                  style: TextStyle(
                      color: Colors.grey.shade800,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey.shade700,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(14),
                          topRight: Radius.circular(14),
                          bottomLeft: Radius.circular(14),
                          bottomRight: Radius.circular(14)),
                      boxShadow: [
                        BoxShadow(color: Colors.blue.shade300, spreadRadius: 1)
                      ]),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Konya TarihiCennet Yurdumuzun, adı eski devirlerden beri"
                      " değişmeyen şehirlerinden biri de Konya’dır. Konya adının"
                      " “Kutsal Tasvir” anlamındaki “İkon” sözcüğüne bağlı olduğu"
                      " iddia edilir. Bu konuda değişik rivayetler bulunmaktadır."
                      " Bunlardan biri; kente dadanan ejderhayı öldüren kişiye şükran"
                      " ifadesi olarak bir anıt yapılır ve üzerine de olayı anlatan"
                      " bir resim çizilir. Bu anıta verilen isim, “İkonion” dur."
                      "İkonion adı, İcconium’a dönüşürken, Roma döneminde İmparator "
                      "adlarıyla değişen yeni söyleniş biçimlerine rastlanır. Bunlar; "
                      "“Claudiconium, Colonia Selie, Augusta İconium” dur. Bizans"
                      " kaynaklarında “Tokonion” olarak geçen şehrimize yakıştırılan "
                      "diğer isimler şöyledir"
                      "Ycconium, Conium, Stancona, Conia, Cogne, Cogna,"
                      " Konien, Konia…”Arapların Kuniya dedikleri güzel kentimiz,"
                      " selçuklu ve Osmanlı dönemlerinde bir daha değişmeyerek günümüze"
                      " kadar gelen ismine kavuşmuştur: Konya…Konya İli, M.Ö. 7. bin yılından"
                      " beri yerleşim yeri olmuş, pek çok medeniyete beşiklik etmiştir."
                      " Yazının M.Ö. 3500’de kullanılmaya başladığı hatırlanacak olursa,"
                      " Konya’nın, ülkemizin en eski yerleşim merkezleri arasında yer"
                      " aldığı söylenebilir.Çumra Çatalhöyük, sadece ülkemizin değil"
                      ", Dünya ölçüsünde yemek kültürünün ilk defa başladığı, tarımın"
                      " yapıldığı, ateşin kullanıldığı, yerleşik hayata geçildiği, vahşi"
                      " hayvan saldırılarına karşı ortak savunmanın yapıldığı merkez olarak"
                      " tanınır.Çatalhöyük, Neolitik, Erbaba ve Karahöyük Kalkolitik, "
                      "Alaeddin Tepesi, Eski Tunç Devri merkezleridir.Tarih devirlerinde"
                      " Hititler ve Lidyalılar, M.Ö. 6. yüzyılda Persler, "
                      "M.Ö. 4. yüzyılda Büyük İskender, Selevkoslar, Bergama krallığı, "
                      "M.Ö. 2. yüzyılda Roma, M.S. 395’te Konya ve çevresine hakim oldular.",
                      style: TextStyle(
                          color: Colors.white, fontSize: 18, letterSpacing: 1),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
