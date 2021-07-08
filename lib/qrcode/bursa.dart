import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_slider/image_slider.dart';

class newScreen extends StatefulWidget {
  const newScreen({Key? key}) : super(key: key);

  @override
  _newScreenState createState() => _newScreenState();
}

class _newScreenState extends State<newScreen> with SingleTickerProviderStateMixin {


  void initState() {
    super.initState();
    tabController = TabController(length: 6, vsync: this);
  }

  TabController? tabController;

  static List<String> links = [
    "assets/images/bursa.jpeg",
    "assets/images/bursa3.jpeg",
    "assets/images/bursa4.jpeg",
    "assets/images/bursa5.jpeg",
    "assets/images/bursa6.jpeg",
    "assets/images/bursa7.jpeg",
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
                  "BURSA",
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
                      "Bursa TarihiEski adı: Yunanca “Προύσα” Prussa veya Brusa’dır. "
                          "Yapılan araştırmalar Bursa yöresinin M.Ö. 4000’lerden beri "
                          "çeşitli yerleşimlere sahne olduğunu göstermektedir. Bu topraklara M.Ö. 13."
                          " yüzyıldan sonra Bitinler ve Misler yerleşti. İlk çağda Bitinya ve Misya’nın"
                          " komşu olduğu bir alanda yer alan yöre M.Ö. 7. yüzyılda Lidya’nın, M.Ö."
                          " 546’da da Perslerin egemenliğine girdi. M.Ö. 334’e kadar süren Pers "
                          "egemenliği boyunca Bitinyalılar kendi yöneticilerini seçme hakkına sahipti."
                          " M.Ö. 328’de Bitinya Krallığı kuruldu. Kral Zipoetes döneminde gelişen krallık,"
                          " oğlu I. Nikomedes zamanında en güçlü haline ulaştı. M.Ö. 230-182 arasında Bitinya"
                          " kralı olan I. Prusias Bursa kentinin kurucusu olarak kabul edilir. Bursa adının"
                          " da kentin o zamanki adı Prusa’dan kaynaklandığı sanılmaktadır.M.Ö. 74’te Roma’ya"
                          " bağlanan Bitinya’nın başkenti Prusa’dan Nikomedeia’ya (İzmit) taşındı. M.S. 395 "
                          "yılında Roma İmparatorluğu’nun ikiye bölünmesinden sonra Bizans yönetiminde kalan"
                          " Bursa, imparatorluğun Doğu Eyaleti’ne bağlı beş diyosezden Asya Diyosezi sınırları "
                          "içindeydi. Kent özellikle 11. yüzyılda Selçukluların saldırısına uğradıysa da 14. "
                          "yüzyıla değin Bizans yönetimi altında kaldı.Uzun çatışmalardan sonra 1326’da Orhan "
                          "Bey Bursa’yı alarak Osmanlıların başkenti yaptı. Bursa’nın fethi (1326 yılında) ile"
                          " kurulan Bursa Mehterhanesi 1826 yılında Yeniçeriliğin kaldırılışıyla beraber kapatılmıştır"
                          ". Bursa 1365’te Edirne’nin başkent yapılmasına kadar bu durumunu korudu. Bursa,"
                          " İstanbul’un Fethi’ne kadar Osmanlıların en önemli merkeziydi."
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
