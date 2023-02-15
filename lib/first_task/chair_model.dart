import 'package:flutter/material.dart';

class Chair2 extends StatelessWidget {


  String price;
  String name;
  var image ;


  Chair2({required this.name,required this.price,required this.image});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              height: 200,width: 200,
              color: Colors.blue[50],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 150),
              child: Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Container(
                    color: Colors.teal[800],
                    child: Text('New',
                      style: TextStyle(
                          color: Colors.white
                      ),)
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10,top: 10),
              child: Text('$name',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.teal[700]),),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 45),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Text('$price',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20),),
                  ),
                  SizedBox(width: 120,),
                  Text('4.9',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 80,left: 30),
              child: Image.asset('$image'),
            ),
          ],
        ),
      ),
    );
  }
}
