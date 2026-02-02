import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Fultter UI Basics", style: TextStyle(fontFamily: 'Courier', fontSize: 27, fontWeight: FontWeight.bold, color: Colors.white),),
      backgroundColor: Colors.black,
      centerTitle: true,
      ),
      
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,

          children: [
            Text("Text Widget", style: TextStyle(fontSize: 25, fontFamily: 'Courier',fontWeight: FontWeight.bold)),
            Text("This is a Text Widget", style: TextStyle(fontSize: 19, fontFamily: 'times new roman')),
            Divider(height: 20, thickness: 2,),

            Text("ICON Widget", style: TextStyle(fontSize: 25, fontFamily: 'Courier',fontWeight: FontWeight.bold)),
            Center(child: Icon(Icons.star, color: Colors.red, size: 45,)),
            Divider(height: 20, thickness: 2,),

            Text("Image Widget", style: TextStyle(fontSize: 25, fontFamily: 'Courier',fontWeight: FontWeight.bold)),
            Image.network("https://asifahamed.com/images/test.png", height: 250, fit: BoxFit.cover),
            Divider(height: 25,thickness: 2,),

            Text("ROW Widget", style: TextStyle(fontSize: 25, fontFamily: 'Courier',fontWeight: FontWeight.bold)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(height: 50,),
                Icon(Icons.home, size: 50),
                Icon(Icons.message, size: 40),
                Icon(Icons.phone, size: 40),
                Icon(Icons.exit_to_app, size: 40),
              ],
            ),
            Divider(height: 25,thickness: 2,),

            Text("Column Widget", style: TextStyle(fontSize: 25, fontFamily: 'Courier',fontWeight: FontWeight.bold)),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.home, size: 50),
                Icon(Icons.message, size: 40),
                Icon(Icons.phone, size: 40),
                Icon(Icons.exit_to_app, size: 40),
              ],
            ),
            Divider(height: 25,thickness: 2),

            Text("SizedBox Spacing", style: TextStyle(fontSize: 25, fontFamily: 'Courier',fontWeight: FontWeight.bold)),
            Icon(Icons.star, size: 50),
            SizedBox(height: 25),
            Icon(Icons.star, size: 50),
            Divider(height: 25,thickness: 2),

            Text("Container widget", style: TextStyle(fontSize: 25, fontFamily: 'Courier',fontWeight: FontWeight.bold)),
            Center(
              child: Container(
                alignment: Alignment.center, height: 150, width: 150,
                decoration: BoxDecoration(
                    color: Colors.blue, 
                    border: Border.all(color: Colors.black), 
                    borderRadius: BorderRadius.circular(20)),
                child: Text("This is a container", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),),
            ),
            ),
            Divider(thickness: 2, height: 25,),

            Text("Stack Widget", style: TextStyle(fontSize: 25, fontFamily: 'Courier',fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Stack(
              alignment: Alignment.center,
              children: [
                Container(height: 300, width: 300, color: Colors.red),
                Container(height: 200, width: 200, color: Colors.green),
                Container(height: 100, width: 100, color: Colors.yellow),
              ],
            ),
            Divider(thickness: 2, height: 25,),
          ],
        ),
      ),
    );
  }

}