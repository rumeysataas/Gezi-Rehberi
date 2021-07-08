import 'package:flutter/material.dart';
import 'package:image_slider/image_slider.dart';

class Istanbul extends StatefulWidget {
  const Istanbul({Key? key}) : super(key: key);

  @override
  _IstanbulState createState() => _IstanbulState();
}

class _IstanbulState extends State<Istanbul> with SingleTickerProviderStateMixin {


  void initState() {
    super.initState();
    tabController = TabController(length: 6, vsync: this);
  }

  TabController? tabController;

  static List<String> links = [
    "assets/images/istanbul.jpeg",
    "assets/images/istanbul1.jpg",
    "assets/images/istanbul3.jpeg",
    "assets/images/istanbul4.jpeg",
    "assets/images/istanbul5.jpeg",
    "assets/images/istanbul6.jpeg",
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
                  "İSTANBUL",
                  style: TextStyle(
                      color: Colors.grey.shade800,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 10,),
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
                      ]
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "İstanbul tarihi abideleri ve şahane tabii manzaraları"
                          " ile ünlü, önemli bir megapoldür. Asya ile Avrupa"
                          " Kıtaları’nın dar bir deniz geçidi “Boğaziçi” ile"
                          " ayrıldığı yerde, iki kıta üzerinde kurulu tek şehirdir."
                          " 2500 yılı aşan bir tarihe sahip olan İstanbul, deniz ve"
                          " karaların kucaklaştığı bu stratejik bölgede kuruluşunu "
                          "takiben önemli bir ticaret merkezi olmuştu. Tarihi İstanbul "
                          "şehri üç tarafını Marmara Denizi, Boğaziçi ve Halic’in sardığı "
                          "bir yarım ada üzerinde yer alır. Burası 3 dünya imparatorluğuna, "
                          "Roma, Bizans ve Osmanlı Türkleri’ne başkent olmuş,1600 yılı aşan"
                          " bir süre boyunca 120 den fazla imparator ve sultan burada hüküm "
                          "sürmüştür. Dünyada bu özelliğe sahip tek şehirdir. Gelişim sürecinde "
                          "surlar her defasında daha batıya inşa edilerek şehir 4 defa genişletilmişti."
                          " 5.yy Roma devri surları ile çevrili, 7 tepe üzerine kurulu İstanbul,"
                          " Türk sanatının şaheser eserleri, buralara kondurulmuş “taçlar” gibi,"
                          " Sultan camileri ile süslüdür. Şehrin silueti her yönden güzel, muhteşem "
                          "ve huzur verici bir manzaradır. Çok emin bir tabii liman olan Haliç"
                          " şehrin gelişmesinde önemli rol oynamıştı. Ana yolların denize"
                          " ulaştığı kavşak noktasında yer alması, kolay savunulur bir yarım ada,"
                          " ideal iklim, zengin ve cömert tabiat, stratejik Boğaziçi’nin kontrolü gib"
                          "i özellikler ve "
                          "coğrafi konumunun dünyanın"
                          " merkezinde bulunması İstanbul’un kısmetidir."
                          ,
                      style: TextStyle(color: Colors.white, fontSize: 18,letterSpacing: 1),
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
