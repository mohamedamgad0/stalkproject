import 'package:flutter/material.dart';
import 'package:stalkproject/Constants.dart';
import 'package:stalkproject/Screens/Product/DetailsScreen.dart';
import 'package:stalkproject/components/ProductModel.dart';

class HomeScreen extends StatefulWidget {
  List? produ;
  int? dex;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu),
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
        title: Text('TecMoGz'),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: GridView.builder(
          itemCount: productList.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisSpacing: 2,
            crossAxisCount: 2,
            childAspectRatio: 0.8,
            crossAxisSpacing: 15,
          ),
          itemBuilder: (context, index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: kPrimaryEasyColor,
                    borderRadius: BorderRadius.circular(32),
                  ),
                  width: 250,
                  height: 160,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return DetailsScreen(
                                produ: productList, dex: index);
                          },
                        ),
                      );
                    },
                    child: Stack(
                      alignment: AlignmentDirectional.bottomEnd,
                      children: [
                        Hero(
                          tag: "${productList[index].id}",
                          child: Image.asset(
                            "${productList[index].image}",
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(
                              () {
                                productList[index].isFavorite =
                                    !productList[index].isFavorite!;
                              },
                            );
                          },
                          child: Icon(
                            productList[index].isFavorite == true
                                ? Icons.favorite
                                : Icons.favorite_border,
                            color: Colors.red,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  child: Text(productList[index].name!),
                ),
                Text(
                  productList[index].price.toString(),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
