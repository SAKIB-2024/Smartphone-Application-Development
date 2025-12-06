import 'package:flutter/material.dart';
import 'second_screen.dart';
import 'third_screen.dart';
class FirstScreen extends StatelessWidget{
    @override
    Widget build (BuildContext context) => Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.blue,
            leading: IconButton(
                icon: Icon(Icons.home),
                onPressed: (){
                    print("Home Clicked");
                },
            ),
            title: Text('Personal Information Seeker',style: TextStyle(fontSize: 20),),
            centerTitle: true,
        ),
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                    SizedBox(height: 60),
                    Row(
                        children: [
                          SizedBox(width: 20),
                            Image.network('https://miro.medium.com/v2/resize:fit:1200/1*iPZ00kImJY8oVioV5Dy75A.jpeg',
                            height: 120,
                            ),
                            SizedBox(width: 20),
                            // Image.network('https://i.pinimg.com/originals/ef/3c/3f/ef3c3fd973ce6890b32d27be7a050b62.png',
                            // height: 120,
                            // ),
                            Image(
                              image: AssetImage('assets/Three.jpg'),
                              height: 120,
                            ),
                        ],
                    ),

                    SizedBox(height: 40),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(padding: EdgeInsets.all(20)),
                        child: Text('CF : mahmudulsakib2019',
                        style: TextStyle(fontSize: 20),
                        ),
                        onPressed: (){
                            Navigator.push(context,
                            MaterialPageRoute(builder: (context) => SecondScreen()),
                            );
                        },
                    ),
                    SizedBox(height: 40),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(padding: EdgeInsets.all(20)),
                        child: Text('CC : sakib2019',
                        style: TextStyle(fontSize: 20),
                        ),
                        onPressed: (){
                            Navigator.push(context,
                            MaterialPageRoute(builder: (context) => ThirdScreen()),
                            );
                        },
                    ),
                ],
            ),
        ),
        // body: Column(

        // ),
    );
}