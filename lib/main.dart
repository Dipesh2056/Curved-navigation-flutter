import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';


void main() {
  runApp(
    MaterialApp(
      home: MyBotNav(),
    )
  );
}

class MyBotNav extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return MyBotNavState();
  }

}
class MyBotNavState extends State<MyBotNav>{
  Color bgcolor= Colors.blueAccent;
  var txt ="Login Page";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgcolor,

      appBar: AppBar(
        title: Text("My App"),
      ),
      body: Center(
        child:Text(txt,style: TextStyle(fontSize: 30.0),) ,
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: bgcolor,
        items: [
          Icon(Icons.login),
          Icon(Icons.search),
          Icon(Icons.app_registration),
        ],
          onTap: (index){
    setState(() {
    if(index==0){
     bgcolor= Colors.blueAccent;
     txt ="Login Page";
    }
    if(index==1){
     bgcolor= Colors.pinkAccent;
     txt ="Search Page";
    }
    if(index==2){
     bgcolor= Colors.yellowAccent;
     txt ="Registartion Page";
    }

    },
    );
    })
    );

  }

}

