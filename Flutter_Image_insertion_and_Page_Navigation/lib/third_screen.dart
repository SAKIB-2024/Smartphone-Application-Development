import 'package:flutter/material.dart';
class ThirdScreen extends StatelessWidget{
    @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Text('INFO OF SAKIB'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          
          children: [
            //SizedBox(height: 30),
            // Image.network('https://media.licdn.com/dms/image/v2/D5622AQELuLHzirN83g/feedshare-shrink_2048_1536/feedshare-shrink_2048_1536/0/1725073891526?e=2147483647&v=beta&t=NPZNK3Hb8HmdRPkuwvX9B2J1XJ1TsREff7fYs2Bbd18',
            // height:420,
            // ),
            Image(
              image: AssetImage('assets/four.jpeg')
            ),
            SizedBox(height: 30),
            ElevatedButton(
                style: ElevatedButton.styleFrom(padding: EdgeInsets.all(20)),
                child: Text('GO BACK',style: TextStyle(fontSize: 20)),
                onPressed: (){
                    Navigator.pop(context);
                },
            ),
            
          ],
        ),
        // child: ElevatedButton(
        //     style: ElevatedButton.styleFrom(
        //         padding: EdgeInsets.all(20),
        //     ),
        //     child: Text('Go back',style: TextStyle(fontSize: 20),),
        //     onPressed: () {
        //         Navigator.pop(context);
        //     },
        // ),
      ),
  );
}