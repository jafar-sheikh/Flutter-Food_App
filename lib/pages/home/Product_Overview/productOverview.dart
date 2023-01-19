import 'package:flutter/material.dart';

enum SinginCharacter { fill, outline }

class ProductOverview extends StatefulWidget {

  final String productName;
  final String productImage;
  final String productPrice;



  ProductOverview({required this.productName,required this.productImage,required this.productPrice});

  @override
  State<ProductOverview> createState() => _ProductOverviewState();
}

class _ProductOverviewState extends State<ProductOverview> {
  SinginCharacter _character = SinginCharacter.fill;

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
                    title: Text(widget.productName,style: TextStyle(fontSize: 30,color: Colors.green),),

                  ),
                  Container(
                    height: 200,
                    padding: EdgeInsets.all(20),
                    child: Image.network(
                      widget.productImage,
                        ),
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
                            Radio(
                                value: SinginCharacter.fill,
                                groupValue: _character,
                                activeColor: Colors.green,
                                onChanged: (value) {
                                  setState(() {
                                    _character = value!;
                                  });
                                }),
                          ],
                        ),
                        Text(widget.productPrice,style: TextStyle(fontSize: 20,color: Colors.green),),
                        Column(
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 30, vertical: 10),
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey,width: 2),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.add,size: 15,color: Colors.green,),
                                  Text('Add' , style: TextStyle(color: Colors.green),),
                                ],
                              ),
                            ),


                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.all(5),
                          child: Text('About This Product',style: TextStyle(fontSize: 15),),
                        ),
                        SizedBox(height: 10,),
                        Container(
                          padding: EdgeInsets.all(5),
                          child: Text('A product description is the marketing copy that explains what a product is and why it’s worth purchasing. '),
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
