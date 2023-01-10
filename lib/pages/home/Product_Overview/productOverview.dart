import 'package:flutter/material.dart';

enum SinginCharacter {fill, outline}

class ProductOverview extends StatefulWidget {
  @override
  State<ProductOverview> createState() => _ProductOverviewState();
}

class _ProductOverviewState extends State<ProductOverview> {

  SinginCharacter _character =SinginCharacter.fill;

  Widget bottomNavigationBarr(
      {required Color iconecolor,
      required Color backgroundcolor,
      required Color color,
      required String tital,
      required IconData iconData}) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(20),
        color: backgroundcolor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              iconData,
              size: 20,
              color: iconecolor,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              tital,
              style: TextStyle(color: color, fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Row(
        children: [
          bottomNavigationBarr(
              iconecolor: Colors.grey,
              backgroundcolor: Colors.black,
              color: Colors.white70,
              tital: 'Add to WishList',
              iconData: Icons.favorite_outline),
          bottomNavigationBarr(
              iconecolor: Colors.white70,
              backgroundcolor: Colors.amber,
              color: Colors.blue,
              tital: 'Go to Cart',
              iconData: Icons.shopping_cart)
        ],
      ),
      appBar: AppBar(
        title: Text('Product over view'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              width: double.infinity,
              child: Column(
                children: [
                  ListTile(
                    title: Text('Fresh Basil'),
                    subtitle: Text('50 Tk'),
                  ),
                  Container(
                    height: 200,
                    padding: EdgeInsets.all(20),
                    child: Image.network(
                        'https://www.pngitem.com/pimgs/m/421-4217380_transparent-background-vegetables-png-png-download.png'),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    width: double.infinity,
                    child: Text(
                      'Available Options',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.w600),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 3,
                              backgroundColor: Colors.green,
                            ),
                           Radio(value: SinginCharacter.fill, groupValue: _character,activeColor: Colors.green, onChanged: (value){
                             setState(() {
                               _character= value!;
                             });
                           }),
                          ],
                        ),
                      ],
                    ),
                  ),

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
