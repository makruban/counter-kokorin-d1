import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Counter(),
  ));
}

class Counter extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text('Counter'),
        centerTitle: true,
      ),
      body: SafeArea(child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 5.0),
              child: Text('Tap "-" to decrement',
                style: TextStyle(
                  color: Colors.white,
                ),),
            ),
            CounterWidget(),
            Padding(
              padding: EdgeInsets.only(top: 5.0),
              child: Text('Tap "+" to increment',
                style: TextStyle(
                  color: Colors.white,
                ),),
            )
          ],
        ),
      ),),

    );
  }
}

class CounterWidget extends StatefulWidget{
  @override
  _CounterWidgetState createState() => _CounterWidgetState();

}
class _CounterWidgetState extends State<CounterWidget>{
  int _count = 50;


  @override
  Widget build(BuildContext context) {
    return Container(
           width: 120.0,
           decoration: BoxDecoration(
             color: Colors.blueGrey[100],
             borderRadius: BorderRadius.all(Radius.circular(8.0)),
             boxShadow: [
               BoxShadow(
                 spreadRadius: 0.30,
                 offset: Offset(3,2),
                 blurRadius: 3.0,
               ),

             ]
           ),
           child: Row(

             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               IconButton(iconSize: 30.0,hoverColor: Colors.grey, color: Colors.red, onPressed:(){
                 setState(() {
                  _count =  _count - 1;
                 });}, icon: Icon(Icons.remove),),
               Container(
                 child: Text('$_count',
                 style: TextStyle(
                   fontSize: 20.0,
                 ),),
               ),
               IconButton(iconSize: 30.0, color: Colors.green, onPressed: (){
                 setState(() {
                   _count = _count + 1;
                 });
               }, icon: Icon(Icons.add)),
             ],
           ),
         );

  }
}

