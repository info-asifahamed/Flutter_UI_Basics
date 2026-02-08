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

            Text("Icon Widget", style: TextStyle(fontSize: 25, fontFamily: 'Courier',fontWeight: FontWeight.bold)),
            Center(child: Icon(Icons.star, color: Colors.red, size: 45,)),
            Divider(height: 20, thickness: 2,),

            Text("Image Widget", style: TextStyle(fontSize: 25, fontFamily: 'Courier',fontWeight: FontWeight.bold)),
            Image.network("https://asifahamed.com/images/test.png", height: 250, fit: BoxFit.cover),
            Divider(height: 25,thickness: 2,),

            Text("Row Widget", style: TextStyle(fontSize: 25, fontFamily: 'Courier',fontWeight: FontWeight.bold)),
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

            Text("Container Widget", style: TextStyle(fontSize: 25, fontFamily: 'Courier',fontWeight: FontWeight.bold)),
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

            Text("Wrap Widget", style: TextStyle(fontSize: 25, fontFamily: 'Courier',fontWeight: FontWeight.bold)),
            Wrap(
              spacing: 20, runSpacing: 5,
              children: List.generate(8, (index)=> Chip(label: Text('Item $index'))),
            ),
            Divider(thickness: 2, height: 25,),

            Text("Button's Widget", style: TextStyle(fontSize: 25, fontFamily: 'Courier',fontWeight: FontWeight.bold)),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(onPressed: (){},
                    child: Text('ElevatedButton'), style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.amber, foregroundColor: Colors.white,
                        padding: EdgeInsets.all(20),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40)
                        )
                    ),),
                  SizedBox(width: 5),

                  TextButton(onPressed: (){},
                    child: Text('TextButton'), style: TextButton.styleFrom(
                        backgroundColor: Colors.red, foregroundColor: Colors.white,
                        padding: EdgeInsets.all(20),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)
                        )
                    ),),
                  SizedBox(width: 5),

                  OutlinedButton(onPressed: (){},
                    child: Text('Outlined Button'), style: OutlinedButton.styleFrom(
                        backgroundColor: Colors.black, foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        )
                    ),),
                  SizedBox(width: 5),
                  
                  IconButton(onPressed: (){}, icon: Icon(Icons.home), style: IconButton.styleFrom(
                    backgroundColor: Colors.amber, foregroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)
                    )
                  ),),
                  SizedBox(width: 5),

                  IconButton(onPressed: (){}, icon: Icon(Icons.car_crash), style: IconButton.styleFrom(
                      backgroundColor: Colors.red, foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)
                      )
                  ),),
                ],
              ),
            ),
            Divider(thickness: 2, height: 25,),

            Text("DropDown Button", style: TextStyle(fontSize: 25, fontFamily: 'Courier',fontWeight: FontWeight.bold)),
            DropdownButton(
              items: [
              DropdownMenuItem(value: "Asif", child: Text("Asif"),),
              DropdownMenuItem(value: "Riya", child: Text("Riya"),),
              DropdownMenuItem(value: "Ayaz", child: Text("Ayaz"),),
              DropdownMenuItem(value: "Joty", child: Text("Joty"),),
            ], onChanged: (value){},
            ),
            Divider(thickness: 2, height: 25,),

            Text("Check Box", style: TextStyle(fontSize: 25, fontFamily: 'Courier',fontWeight: FontWeight.bold)),
            Checkbox(value: true, onChanged: (value){}),
            Divider(thickness: 2, height: 25,),

            Text("Slider", style: TextStyle(fontSize: 25, fontFamily: 'Courier',fontWeight: FontWeight.bold)),
            Slider(value: 0.5, onChanged: (value){}),
            Divider(thickness: 2, height: 25,),


          ],
        ),
      ),

    );
  }

}