
/*
// Projeye kütüphane ,resim, veritabını eklemek istediğimizde "pubspec.yaml" dosyasına eklememiz gerekiyor . daha sonrasında pub get dememiz gerekli (projeye aktarmak için

import 'package:flutter/cupertino.dart';

ornek olarak dizine veritabani klasörü ekler ve içerisene rehber.sqlite dosyası eklersek
    pubspec.yaml dosyasına
                              assets:
                                -veritabani/rehber.sqlite
ornek olarak dizine resimler klasörü ekler ve içerisene newresim.png dosyası eklersek
    pubspec.yaml dosyasına
                              assets:
                                 -veritabani/newresim.png
ekleme bu şekilde yapılıyor
----------------------------------------------------            ----------------------------------------------------------------------


    @override
    void initState() { // uygulama sayfası açıldığında çalışan method

      super.initState();
      print("Uygulama Açıldı");
    }


    3 adet tasarım alt yapısı var
1- Row      Satır  yan yana
2- Column   Sütün  alt alta
3- Stack    İçiçe  üst üste


---------------------------------------------- Row Kullanımı --------------------------------------------------------------
body: Row(
  children: [
  Container(width: 80,height: 80, color: Colors.red,),
  Container(width: 50,height: 50,color: Colors.blue,),
  Container(width: 100,height: 100,color: Colors.orange,),
  ],
),
---------------------------------------------- Column Kullanımı --------------------------------------------------------------
body: Column(
  children: [
  Text("Merhaba"),
  Container(width: 100,height: 80, color: Colors.red,),
  Container(width: 50,height: 50,color: Colors.blue,),
  Container(width: 300,height: 100,color: Colors.orange,),
  ],
),
---------------------------------------------- Stack Kullanımı --------------------------------------------------------------
body: Stack(
  children: [
  Container(width: 300,height: 300, color: Colors.red,),
  Container(width: 200,height: 200,color: Colors.blue,),
  Container(width: 100,height: 100,color: Colors.orange,),
  Text("Merhaba"),
  ],
),

---------------------------------------------- Karışık  Kullanımı --------------------------------------------------------------

body: Row(
  children: [
  Container(width: 100,height: 100,color: Colors.green,),
  Container(width: 100,height: 100,color: Colors.red,),
  Column(
    children: [
    Container(width: 100,height: 100,color: Colors.yellow,),
    Container(width: 100,height: 100,color: Colors.orange,),
    Container(width: 100,height: 100,color: Colors.blue,),
    ],
    )
  ],
)



    body: Stack(
      children: [
      Container(width: 400,height: 400,color: Colors.yellowAccent,),
      Column(
        children: [
          Container(width: 100,height: 100,color: Colors.green,),
          Container(width: 100,height: 100,color: Colors.red,),
          Row(
            children: [
            Container(width: 100,height: 100,color: Colors.black,),
            Container(width: 100,height: 100,color: Colors.orange,),
            Container(width: 100,height: 100,color: Colors.blue,),
            ],
            )

          ],
        )
      ],
    )


---------------------------------------------- Container  Kullanımı --------------------------------------------------------------

1-)   margin: const EdgeInsets.all(10.0),                                       her yerden 10 boşluk verme
2-)   margin: const EdgeInsets.only(top: 50.0,left: 20.0,bottom: 30,right: 60), özelleştirme


3-)                                                                             kutu dekorasyonu verme
Container(
           // margin: const EdgeInsets.all(10.0),
            margin: const EdgeInsets.only(top: 50.0,left: 20.0,bottom: 30,right: 60),
            width: 200,
            height: 200,
            child: Text("Merhaba"),
            decoration:BoxDecoration(
              color: Colors.yellow,
              border: Border.all(color: Colors.black,width: 3.0,),
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
            ),
          )


---------------------------------------------- MainAxisAlignment  Kullanımı --------------------------------------------------------------
                                            // Ana Eksen Hizalama
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(width: 100,height: 100,color: Colors.red,),
          Container(width: 50,height: 50,color: Colors.green,),
          Container(width: 80,height: 80,color: Colors.blue,),
        ],
      )

Burada 5 tane kullanım şekli var
  1-) start
  2-) end
  3-) center
  4-) spaceBetween - spaceAround   // boşluklu bir şeilde dizer
  5-) spaveEvenly                  // başa ve sona birer tane sonra boşluklu olur

---------------------------------------------- CrosAxisAlignment  Kullanımı --------------------------------------------------------------
                                             // Çapraz Eksen Hizalama
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(width: 100,height: 100,color: Colors.red,),
          Container(width: 50,height: 50,color: Colors.green,),
          Container(width: 80,height: 80,color: Colors.blue,),
        ],
      )

Burada 4 tane kullanım şekli var
  1-) start
  2-) end
  3-) center              // ortalı dizer  (varsayılan)
  4-) stretch             // yukarıdan aşağı dogru tam çizgi çeker


---------------------------------------------- MainAxisSize  Kullanımı --------------------------------------------------------------
                                              //Ana Eksen Boyutlandırma

Burada 2 tane kullanım şekli var
  1-) max        // aslında (match parent)       tamamına yay demek
  2-) min        // aslında (wrap content)       içeri kadar kendisini küçült demek (Sınırlı)

        body: Row(
          mainAxisSize: MainAxisSize.min,
        body: Row(
          mainAxisSize: MainAxisSize.max,


----------------------------------------------------  Center kullanımı   ----------------------------------------------------------------------
      body:Row(
        children: [
          Container(
            width: 250,
            height: 250,
            color: Colors.orange,
            child: Center(
              child: Text("Merhaba"),
            ),
          )
        ],
      )


      Örnek 2   -- hem satır olarak hem sütün olarak ortalar

        body:Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 250,
              height: 250,
              color: Colors.orange,
              child: Center(
                child: Text("Merhaba"),
              ),
            )
          ],
        ),
      )
----------------------------------------------------  Align Kullanımı    ----------------------------------------------------------------------
Burada 9 kullanım şekli var
  1-) topcenter               // yazıyı kutucuğun üst orta kısmına yerleştirir
  2-) topleft                 // yazıyı kutucuğun üst sol kısmına yerleştirir
  3-) topright                // yazıyı kutucuğun üst sağ kısmına yerleştirir
  4-) centerright             // yazıyı kutucuğun orta sağ kısmına yerleştirir
  5-) centerleft              // yazıyı kutucuğun orta sol kısmına yerleştirir
  6-) center                  // yazıyı kutucuğun orta orta kısmına yerleştirir
  7-) bottomright             // yazıyı kutucuğun alt sağ kısmına yerleştirir
  8-) bottomleft              // yazıyı kutucuğun alt sol kısmına yerleştirir
  9-) bottomcenter            // yazıyı kutucuğun alt orta kısmına yerleştirir

                                              ÖRNEKLER
    body:Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 250,
              height: 250,
              color: Colors.orange,
              child: Align(
                alignment:Alignment.topLeft,
                child: Text("Merhaba"),
              ),
            )
          ],
        ),
      )




    body:Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 250,
              height: 250,
              color: Colors.orange,
              child: Align(
                alignment:Alignment.bottomRight,
                child: Text("Merhaba"),
              ),
            )
          ],
        ),
      )
----------------------------------------------------   SizedBox Kullanımı   ----------------------------------------------------------------------

1-Container ı baştan boyutlandırma işlemi var burada

    body:Row(
        children: [
          Container(width: 80,height: 80,color: Colors.yellow,),
          SizedBox(
            width: 120,
            height: 120,
            child: Container(width: 50,height: 50,color: Colors.blue,),
          ),
          Container(width: 100,height: 100,color: Colors.green,),
        ],
      )



2- bu kullanımda sarı ve mavi kutu arasında bokluş oluşturdu

    body:Row(
        children: [
          Container(width: 80,height: 80,color: Colors.yellow,),
          SizedBox(width: 100,height: 100,),
          Container(width: 50,height: 50,color: Colors.blue,),
          Container(width: 100,height: 100,color: Colors.green,),
        ],
      )
----------------------------------------------------    Spacer Kullanımı     ----------------------------------------------------------------------

1- burada boşluk bırakmaya yarar,

      body: Column(
        children: [
          Container(width: 80,height: 80,color: Colors.yellow,),
          Spacer(),
          Container(width: 50,height: 50,color: Colors.blue,),
          Container(width: 100,height: 100,color: Colors.green,),
        ]
      ),

2- burada sarı-mavi arasındaki boşlu %30 mavi-yeşil arasındaki boşluk %70 dir

      body: Column(
        children: [
          Container(width: 80,height: 80,color: Colors.yellow,),
          Spacer(flex: 30,),
          Container(width: 50,height: 50,color: Colors.blue,),
          Spacer(flex: 70,),
          Container(width: 100,height: 100,color: Colors.green,),
        ]
      ),
----------------------------------------------------   Padding Kullanımı   ----------------------------------------------------------------------
1-Padding sayasında widgetların çevresine boşluk oluşturabiliyoruz.
   -(1)    EdgeInsets.all() sayasında her tarafa aynı miktarda boşluk verebiliriz
   -(2)    EggeInsets.only() sayesinde istediğim kısma boşluk verebiliriz.

  1-
       body: Row(
        children: [
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Container(width: 100,height: 100,color: Colors.yellow,),
          ),
          Container(width: 100,height: 100,color:Colors.blue),
          Container(width: 100,height: 100,color:Colors.green),
        ],
      ),

  2-
      body: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 20,right: 50,bottom: 20,top: 25),
            child: Container(width: 100,height: 100,color: Colors.yellow,),
          ),
          Container(width: 100,height: 100,color:Colors.blue),
          Container(width: 100,height: 100,color:Colors.green),
        ],
      ),


      body: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(width: 100,height: 100,color:Colors.yellow),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(width: 100,height: 100,color:Colors.blue),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(width: 100,height: 100,color:Colors.green),
          ),
        ],
      ),



----------------------------------------------------            ----------------------------------------------------------------------

@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 60,
              child: Container(width: 100,height: 100,color: Colors.red,)
          ),
          Expanded(
            flex: 40,
              child: Container(width: 100,height: 100,color: Colors.blue,)
          ),
        ],
      ),

    );
  }

---------------------------------------------------- Resim Ekleme           ----------------------------------------------------------------------
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);



  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          Image.asset("resimler/yemekresim.jpeg"),
          Text("Yemek"),
        ],
      ),

    );
  }
}
----------------------------------------------------            ----------------------------------------------------------------------

----------------------------------------------------            ----------------------------------------------------------------------

----------------------------------------------------            ----------------------------------------------------------------------



 */