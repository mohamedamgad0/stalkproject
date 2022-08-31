import 'package:flutter/material.dart';
import 'package:stalkproject/Constants.dart';
import 'package:stalkproject/Screens/Product/HomeScreen.dart';

class DetailsScreen extends StatelessWidget {
  List produ;
  int dex;

  DetailsScreen({required this.produ, required this.dex});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TecMoGz"),
        centerTitle: true,
        backgroundColor: kPrimaryColor,
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return HomeScreen();
                },
              ),
            );
          },
          icon: Icon(Icons.arrow_back_ios_sharp),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.local_grocery_store_outlined),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              '${produ[dex].name}',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: kPrimaryEasyColor,
              borderRadius: BorderRadius.circular(29),
            ),
            child: Image.asset(produ[dex].image),
          ),
          Padding(
            padding: const EdgeInsets.only(
              right: 155,
              top: 20,
              bottom: 20,
            ),
            child: Text(
              'ModelNumber = ${produ[dex].id} ',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          Divider(
            thickness: 8,
            height: 1.5,
            color: kPrimaryColor,
            endIndent: 30,
            indent: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 200, top: 20, bottom: 20),
            child: Text(
              'Price = ${produ[dex].price} \$',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          Divider(
            thickness: 8,
            height: 1.5,
            color: kPrimaryColor,
            endIndent: 30,
            indent: 30,
          ),
          Container(
            margin: new EdgeInsets.symmetric(horizontal: 20.0),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                'About this item ${produ[dex].description}',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
          ),
          Divider(
            thickness: 8,
            height: 1.5,
            color: kPrimaryColor,
            endIndent: 30,
            indent: 30,
          ),
        ]),
      ),
    );
  }
}
