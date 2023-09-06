import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstClass(),
    );
  }
}
class FirstClass extends StatefulWidget {
  const FirstClass({super.key});

  @override
  State<FirstClass> createState() => _FirstClassState();
}

class _FirstClassState extends State<FirstClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 2,
        backgroundColor: Colors.yellow,
        leading: Icon(Icons.arrow_back_ios_new),
        title: Text("First App",
          style: TextStyle(fontSize: 20),

        ),
        actions: [
          Icon(Icons.search),
          Icon(Icons.shopping_cart),
          Icon(Icons.settings)
        ],
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        alignment: Alignment.center,
        child: Column(
          children: [
            Text("Wellcome To Fultter",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.orange,
                fontSize: 30,
              ),
            ),
            //Image.network("https://images.pexels.com/photos/268533/pexels-photo-268533.jpeg?cs=srgb&dl=pexels-pixabay-268533.jpg&fm=jpg"),
            Image.asset("assests/m1.jpg",width: 400,height: 200,fit: BoxFit.cover,),
          ],
        ),
      ),
    );
  }
}

