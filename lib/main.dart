import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Başlık'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body:Center(  // satır içerisinde ortalma yapmak için
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,  // sütun içerisinde ortalama yapmak için
          children: <Widget>[
              MaviKare(),
            SizedBox(height: 20,),  // her iki karenin arasına boşluk koymaya yarar
            KirmiziKare(),
          ],
        ),
      )
    );
  }
}
class MaviKare extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(width: 50,height: 50,color: Colors.blue,);
  }
}

class KirmiziKare extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(width: 50,height: 50,color: Colors.red,);
  }
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

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var ekranBilgisi = MediaQuery.of(context);
    final double ekranYuksekligi = ekranBilgisi.size.height;
    final double ekranGenisligi = ekranBilgisi.size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.blueGrey,
      ),
      body: Column(
        children: [
          Padding(
            padding:  EdgeInsets.only(top:ekranYuksekligi/100,bottom: ekranYuksekligi/100),
            child: SizedBox(
                width: ekranGenisligi/4,
                child: Image.asset("resimler/stevejobs.png")
            ),
          ),
          Text("Steve Jobs",
            style: TextStyle(
              color: Colors.redAccent,
              fontWeight: FontWeight.bold,
              fontSize: ekranGenisligi/25,
            ),
          ),
          Spacer(),
          Padding(
            padding:  EdgeInsets.only(left:ekranGenisligi/100,right: ekranGenisligi/100),
            child: Text("Dünyayı değiştirecek insanlar, "
                "onu değiştirebileceklerini düşünecek kadar çılgın olanlardır.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: ekranGenisligi/25,
              ),
            ),
          ),
          Spacer(),
          Padding(
            padding:  EdgeInsets.only(bottom: ekranYuksekligi/100),
            child: SizedBox(
              width: ekranGenisligi/2,
              height: ekranYuksekligi/15,
              child: ElevatedButton(
                child: Text("İLHAM VER",style: TextStyle(color:Colors.white,fontSize: ekranGenisligi/25),),
                onPressed: (){
                  print("İlham verildi");
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.redAccent
                ),
              ),
            ),
          ),
        ],
      ),

    );
  }
}

