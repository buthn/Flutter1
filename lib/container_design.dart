import 'package:flutter/material.dart';

void main(){
  runApp(Example2());
}

class Example2 extends StatelessWidget {
  const Example2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:ColumnExample(),
    );
  }
}

class ContainerScreen extends StatefulWidget {
  const ContainerScreen({super.key});

  @override
  State<ContainerScreen> createState() => _ContainerScreenState();
}

class _ContainerScreenState extends State<ContainerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          alignment: Alignment.center,
          width: 200,
          height: 200,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(20)),
            image: DecorationImage(image: NetworkImage("https://images.pexels.com/photos/268533/pexels-photo-268533.jpeg?cs=srgb&dl=pexels-pixabay-268533.jpg&fm=jpg"),fit: BoxFit.cover)
          ),
          child: Text("Container Example",style: TextStyle(color: Colors.white),),
        ),
      ),
    );
  }
}

class CircleAvatarExample extends StatefulWidget {
  const CircleAvatarExample({super.key});

  @override
  State<CircleAvatarExample> createState() => _CircleAvatarExampleState();
}

class _CircleAvatarExampleState extends State<CircleAvatarExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(
        width: 150,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20),),
        ),
        child: Center(
          child: CircleAvatar(
          radius: 50,
          backgroundImage: NetworkImage("https://images.pexels.com/photos/268533/pexels-photo-268533.jpeg?cs=srgb&dl=pexels-pixabay-268533.jpg&fm=jpg"),
      ),
        ),
      ),
      body: Container(
        width: double.infinity,
        height: 300,
        child: UserAccountsDrawerHeader(
          accountEmail: Text("Buthaina@gmail.com"),
          accountName: Text("Buthaina"),
          currentAccountPicture:CircleAvatar()
        ),
      )
    );
  }
}
class RowAndColumnsExample extends StatefulWidget {
  const RowAndColumnsExample({super.key});

  @override
  State<RowAndColumnsExample> createState() => _RowAndColumnsExampleState();
}

class _RowAndColumnsExampleState extends State<RowAndColumnsExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            alignment: Alignment.center,
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              image: DecorationImage(image:
                  NetworkImage("https://images.pexels.com/photos/268533/pexels-photo-268533.jpeg?cs=srgb&dl=pexels-pixabay-268533.jpg&fm=jpg"),
                  fit: BoxFit.cover)
            ),
            child: Text("Image1",style: TextStyle(color: Colors.white,fontSize: 20),),
          ),
          Text("First App"),
          Container(
            alignment: Alignment.center,
            width: 200,
            height: 200,
            decoration: BoxDecoration(
                image: DecorationImage(image: NetworkImage("https://images.pexels.com/photos/268533/pexels-photo-268533.jpeg?cs=srgb&dl=pexels-pixabay-268533.jpg&fm=jpg"),fit: BoxFit.cover)
            ),
            child: Text("Image1",style: TextStyle(color: Colors.white,fontSize: 20),),
          ),

        ],
      )
    );
  }
}

class ColumnExample extends StatefulWidget {
  const ColumnExample({super.key});

  @override
  State<ColumnExample> createState() => _ColumnExampleState();
}

class _ColumnExampleState extends State<ColumnExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Container(
                 alignment: Alignment.center,
                 width: 200,
                 height: 200,
                 decoration: BoxDecoration(
                     image: DecorationImage(image:
                     NetworkImage("https://images.pexels.com/photos/268533/pexels-photo-268533.jpeg?cs=srgb&dl=pexels-pixabay-268533.jpg&fm=jpg"),
                         fit: BoxFit.cover)
                 ),
                 child: Text("Image1",style: TextStyle(color: Colors.white,fontSize: 20),),
               ),
               Container(
                 alignment: Alignment.center,
                 width: 200,
                 height: 200,
                 decoration: BoxDecoration(
                     image: DecorationImage(image:
                     NetworkImage("https://images.pexels.com/photos/268533/pexels-photo-268533.jpeg?cs=srgb&dl=pexels-pixabay-268533.jpg&fm=jpg"),
                         fit: BoxFit.cover)
                 ),
                 child: Text("Image1",style: TextStyle(color: Colors.white,fontSize: 20),),
               ),
             ],
           ),
            Text("First App"),
            Container(
              alignment: Alignment.center,
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                  image: DecorationImage(image: NetworkImage("https://images.pexels.com/photos/268533/pexels-photo-268533.jpeg?cs=srgb&dl=pexels-pixabay-268533.jpg&fm=jpg"),fit: BoxFit.cover)
              ),
              child: Text("Image1",style: TextStyle(color: Colors.white,fontSize: 20),),
            ),

          ],
        )
    );
  }
}




