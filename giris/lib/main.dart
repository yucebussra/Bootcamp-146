import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {

    var ekranBilgi = MediaQuery.of(context);
    final double ekranYuksekligi = ekranBilgi.size.height;
    final double ekranGenisligi = ekranBilgi.size.width;

    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: ekranYuksekligi/20),
              child: SizedBox(
                width: ekranGenisligi/5,
                  child: Image.asset("images/logo.png")
              ),
            ),
            Padding(
              padding: EdgeInsets.all(ekranYuksekligi/30),
              // ignore: prefer_const_constructors
              child: TextField(
                // ignore: prefer_const_constructors
                decoration: InputDecoration(
                  hintText: "Kullanıcı Adı",
                  filled: true,
                  fillColor: Colors.white,
                  // ignore: prefer_const_constructors
                  border: OutlineInputBorder(
                    // ignore: prefer_const_constructors
                    borderRadius: BorderRadius.all(Radius.circular(100.0)),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(ekranYuksekligi/30),
              // ignore: prefer_const_constructors
              child: TextField(
                // ignore: prefer_const_constructors
                decoration: InputDecoration(
                  hintText: "Şifre",
                  filled: true,
                  fillColor: Colors.white,
                  // ignore: prefer_const_constructors
                  border: OutlineInputBorder(
                    // ignore: prefer_const_constructors
                    borderRadius: BorderRadius.all(Radius.circular(100.0)),
                  ),
                ),
              ),
            ),

            SizedBox(
              width: ekranGenisligi/3,
              height: ekranYuksekligi/15,
              child: ElevatedButton(
                child: Text("Giriş", style: TextStyle(fontSize: ekranGenisligi/25, color: Colors.white),),
                onPressed: (){
                },
               // style: ElevatedButton.styleFrom(primary: Colors.teal),),
                style: ElevatedButton.styleFrom(
                    primary: Colors.cyanAccent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100), // <-- Radiu
                      // ),
                ),

            ),


              )
            )
          ],
        ),
      ),

    );
  }
}
