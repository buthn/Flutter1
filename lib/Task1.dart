import 'package:flutter/material.dart';

void main(){
  runApp(Task());
}

class Task extends StatelessWidget {
  const Task({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TaskBody(),
    );
  }
}
class TaskBody extends StatefulWidget {
  const TaskBody({super.key});

  @override
  State<TaskBody> createState() => _TaskBodyState();
}

class _TaskBodyState extends State<TaskBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
          width: double.infinity,
          height: 350,
            margin: EdgeInsets.only(bottom: 20),
            child: Image(
              image: NetworkImage("https://images.pexels.com/photos/268533/pexels-photo-268533.jpeg?cs=srgb&dl=pexels-pixabay-268533.jpg&fm=jpg"),fit: BoxFit.cover,),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 20,left: 20),
              alignment: Alignment.topLeft,
              child: Text("Name : Buthaina Nasser",)),
          Container(
              margin: EdgeInsets.only(bottom: 20,left: 20),
              alignment: Alignment.topLeft,
              child: Text("Phone : 94220660",)),
          Container(
              margin: EdgeInsets.only(bottom: 50,left: 20),
              alignment: Alignment.topLeft,
              child: Text("Email : Buthaina@gmail.com",)),
          Container(
            margin: EdgeInsets.all(15),
            alignment: Alignment.center,
            width: double.infinity,
            height: 60,
            child: Text("Call Him",style: TextStyle(color: Colors.white),),
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.all(Radius.circular(20))
            ),
          ),
          Container(
            margin: EdgeInsets.all(15),
            alignment: Alignment.center,
            width: double.infinity,
            height: 60,
            child: Text("Add to contact",style: TextStyle(color: Colors.white),),
            decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.all(Radius.circular(20))
            ),
          )

        ],
      ),
    );
  }
}


