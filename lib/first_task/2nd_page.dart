import 'package:flutter/material.dart';

class Chair extends StatefulWidget {
  Chair({Key? key}) : super(key: key);


  @override
  State<Chair> createState() => _ChairState();
}

class _ChairState extends State<Chair> {

  var image= 'images/Green_Chair.jpeg';
  String chairColor= '';
  int quantityNumber= 0;
  // Chair2 chair2= Chair2(name: 'Green Chair', price: '\$65', image: 'images/Green_Chair-removebg-preview.png');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.shopping_bag,color: Colors.teal,))
        ],
      ),
      body: Column(

        children: [
          Image.asset('$image',),
          Row(
            children:  [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text('$chairColor',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
              ),
              SizedBox(width: 200,),
              Text('\$65',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),)
            ],
          ),



          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(style: TextStyle(color: Colors.grey[500],fontSize: 15),
              'This Text can be changed, This Text can be changed, This Text can be changed, This Text can be changed, This Text can be changed, This Text can be changed, This Text can be changed, This Text can be changed, This Text can be changed, This Text can be changed, This Text can be changed, This Text can be changed, This Text can be changed, This Text can be changed, This Text can be changed, This Text can be changed',),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text('Color',style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500
                ),),
              ),
              GestureDetector(
                onTap: ()
                {
                  setState(() {
                    image= 'images/Green_Chair (1).png';
                    chairColor= 'Green Chair';

                  });
                },
                child: CircleAvatar(
                  radius: 12,
                  backgroundColor: Colors.teal[700],
                ),
              ),
              SizedBox(width: 20,),
              GestureDetector(
                onTap: () {
                  setState(() {
                    image= 'images/blue_chair.jpeg';
                    chairColor= 'Blue Chair';
                  });
                },
                child: CircleAvatar(
                  radius: 12,
                  backgroundColor: Colors.blue,
                ),
              ),
              SizedBox(width: 20,),
              GestureDetector(
                onTap: ()
                {
                  setState(() {
                    image= 'images/Yellow.jpeg';
                    chairColor= 'Yellow Chair';

                  });
                },
                child: CircleAvatar(
                  radius: 12,
                  backgroundColor: Colors.yellow[700],
                ),
              ),
              SizedBox(width: 20,),
              GestureDetector(
                onTap: () {
                  setState(() {
                    image= 'images/Black.jpeg';
                    chairColor= 'Black Chair';
                  });
                },
                child: CircleAvatar(
                  radius: 12,
                  backgroundColor: Colors.black,
                ),
              ),
              SizedBox(width: 20,),
              GestureDetector(
                onTap: ()
                {
                  setState(() {
                    image= 'images/grey.jpeg';
                    chairColor= 'Grey Chair';

                  });
                },
                child: CircleAvatar(
                    radius: 12,
                    backgroundColor: Colors.grey
                ),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text('Quantity',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                  ),),
              ),
              Row(
                children: [
                  FloatingActionButton.small(
                    onPressed: ()
                    {
                      setState(() {
                        quantityNumber--;
                      });
                    },child: Icon(Icons.remove),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Text('$quantityNumber',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                      ),),
                  ),
                  FloatingActionButton.small(
                    onPressed: ()
                    {
                      setState(() {
                        quantityNumber++;
                      });
                    },child: Icon(Icons.add),
                  ),
                ],
              ),

            ],
          ),
          MaterialButton(color: Colors.grey[350],
            onPressed: () {},
            child: Text('Add to cart',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            shape: BeveledRectangleBorder(borderRadius: BorderRadiusDirectional.circular(5) ),),
          MaterialButton(color: Colors.grey[350],
            onPressed: () {},
            child: Text('Buy Now',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            shape: BeveledRectangleBorder(borderRadius: BorderRadiusDirectional.circular(5) ),),

        ],
      ),
    );
  }
}
