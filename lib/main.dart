import 'package:flutter/material.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
	class Home extends StatelessWidget {
    @override 
  Widget build (BuildContext context) {
    List <String> Images = ['assets/img1.jpg','assets/img2.jpg', 'assets/img3.jpg'];
    return Scaffold(
      body: Center (
        child: Padding (
        padding: const EdgeInsets.all(20.0), 
      child: Column (
      children: <Widget>[SizedBox (height: 20,), 
          Text('Gallery', style: TextStyle(fontSize: 25, color: Colors.grey [600] , fontFamily: 'Raleway',), ), 
      SizedBox (height: 10,), 
          Expanded ( 
            child: GridView.count(
              crossAxisCount: 2, 
              scrollDirection: Axis.vertical, 
              crossAxisSpacing: 15, 
              mainAxisSpacing: 15, 
              children: List.generate(21, (index) {
              return
              Container( child: ClipRRect(borderRadius: BorderRadius.circular (20),
                child: Image.asset(Images[index%3],fit: BoxFit.fill,),
              ),  
              ); 
              },
              ), 
              ), 
              ), 
              ], 
              ),  
              ),  
              ),
              ); 
              }
             } 