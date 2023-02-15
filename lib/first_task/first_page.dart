import 'dart:developer';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:first1_task/first_task/2nd_page.dart';
import 'package:first1_task/first_task/chair_model.dart';
import 'package:first1_task/widgets/default_button.dart';
import 'package:flutter/material.dart';

class FirstScreen2 extends StatefulWidget {
  const FirstScreen2({Key? key}) : super(key: key);

  @override
  State<FirstScreen2> createState() => _FirstScreen2State();
}

class _FirstScreen2State extends State<FirstScreen2> {
  final titles = ['Tables', 'Sofa', 'Chairs'];
  int currentIndex = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 320,
                  decoration: const BoxDecoration(
                    color: Colors.teal,
                    borderRadius: BorderRadiusDirectional.only(
                        bottomEnd: Radius.circular(50),
                        bottomStart: Radius.circular(30)),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.settings,
                                color: Colors.white,
                              )),
                          const Spacer(
                            flex: 1,
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.search,
                                color: Colors.white,
                              )),
                          const SizedBox(
                            width: 40,
                            height: 40,
                            child: Image(
                                image: NetworkImage(
                                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSRQsfm5EXhl1imEFCWB6oQpYCq5MEChAE0jQ&usqp=CAU')),
                          ),
                        ],
                      ), //=> appBar
                      const Padding(
                        padding: EdgeInsets.only(
                          top: 20,
                          right: 200,
                        ),
                        child: Text(
                          'Explore',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 35.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 120),
                  child: CarouselSlider(
                      items: [
                        Container(
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadiusDirectional.circular(20),
                            ),
                            child: Image.asset('images/image1.jpeg')),
                        Container(
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadiusDirectional.circular(30)),
                            child: Image.asset('images/image2.jpeg')),
                        Container(
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadiusDirectional.circular(30)),
                            child: Image.asset('images/image3.jpeg')),
                      ],
                      options: CarouselOptions(
                        autoPlay: true,
                      )),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List<Widget>.generate(
                      titles.length,
                          (index) {
                    return Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15.0),
                        child: DefaultButton(
                          title: titles[index],
                          onPressed: () {
                            if(currentIndex == index) {
                              return; //turn off code
                            }
                            setState(() {
                              currentIndex = index;  //currentIndex = 0
                              log('index: $index');
                            });
                          },
                          backgroundColor: currentIndex == index
                              ? Colors.teal
                              : Colors.white,
                          foregroundColor: currentIndex == index
                              ? Colors.white
                              : Colors.teal,
                        ),
                      ),
                    );
                  })),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Chair(),
                            ));
                      },
                      child: Container(
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadiusDirectional.circular(20)),
                          child: Chair2(
                            name: 'Green Chair',
                            price: '\$65',
                            image: 'images/Green_Chair-removebg-preview.png',
                          )),
                    ),
                  )),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Container(
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadiusDirectional.circular(20)),
                        child: Chair2(
                          name: 'Ice Chair',
                          price: '\$100',
                          image: 'images/blue_chair-removebg-preview (1).png',
                        )),
                  )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
