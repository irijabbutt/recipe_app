import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title:Text('Welcome',style: TextStyle(fontSize: 20)),
      centerTitle: true,backgroundColor: Colors.blue,),
      body: ListView.builder(itemBuilder: (BuildContext context,int index){// define design one time and update the list data on that design
        return Text('sample text');
      },
      itemCount: 10,
      ), 
      );
  }
}