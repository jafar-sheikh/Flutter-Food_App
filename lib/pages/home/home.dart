

import 'package:badges/badges.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:food_app/pages/home/single_product.dart';
import 'package:food_app/pages/home/Product_Overview/productOverview.dart';

class HomeScreen extends StatefulWidget {
   HomeScreen({Key? key}) : super(key: key);
  static  String routeName = '/home_screen';


  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  Widget listTile({ required IconData icon , required String title}){
    return ListTile(
      leading: Icon(
        icon,size: 30,
      ),
      title: Text(title,style: TextStyle(color: Colors.black45,fontSize: 20,),
    ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        drawer: Drawer(
          child: Container(
            color: Color(0xffd1ad17),
            child: ListView(
              children: [
                DrawerHeader(
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 43,
                        child: CircleAvatar(
                          radius: 40,
                          backgroundColor: Colors.cyan,
                          // backgroundImage: Image.asset('assets/images/jafar.jpg'),
                        ),
                      ),
                      //SizedBox(height: 7,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 3),
                            child: Text(
                              'Welcome to My Food App',
                              style: TextStyle(fontSize: 15),
                            ),
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Container(
                            child: ElevatedButton(
                              onPressed: () {},
                              child: Text(
                                'Login',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),

                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                listTile(icon: Icons.home, title: "Home"),
                listTile(icon: Icons.shop_rounded, title: "Review Cart"),
                listTile(icon: Icons.person_outline, title: "My Profile"),
                listTile(icon: Icons.notifications_outlined, title: "Notification"),
                listTile(icon: Icons.star_outline, title: "Rating & Review"),
                listTile(icon: Icons.favorite_outlined, title: "Wishlist"),
                listTile(icon: Icons.copy_outlined, title: "Raise a Complaint"),
                listTile(icon: Icons.format_quote_outlined, title: "FAQs"),

                Container(
                  margin: EdgeInsets.only(left: 10),
                  height: 200,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Contact Support',style: TextStyle(fontSize: 17,color: Colors.black45),),
                      SizedBox(height: 10,),
                      Row(

                        children: [
                          Text('Coll us :',style: TextStyle(fontSize: 17,color: Colors.black45)),
                          SizedBox(width: 10,),
                          Text('01734940346',style: TextStyle(fontSize: 17,color: Colors.black45)),
                        ],
                      ),
                      SizedBox(height: 5,),
                      Row(
                        children: [
                          Text('Mail us :',style: TextStyle(fontSize: 17,color: Colors.black45)),
                          SizedBox(width: 10,),
                          Text('jafar.sheikh2021@gmail.com',style: TextStyle(fontSize: 15,color: Colors.black45)),
                        ],
                      ),
                      SizedBox(height: 20,),
                      Container(
                        child: Text('Developed By Abu jafar',style: TextStyle(fontSize: 20,color: Colors.red,fontWeight: FontWeight.bold),),

                      ),
                    ],

                  ),

                ),
              ],
            ),
          ),
        ),
        appBar: AppBar(
          title: TextField(
            decoration: InputDecoration(
              hintText: 'Search',
              prefixIcon: Icon(
                Icons.search,
                color: Colors.black,
              ),
            ),
          ),
          actions: [
            SizedBox(
              width: 8,
            ),
            CircleAvatar(
                radius: 18,
                backgroundColor: Colors.white,
                child: Badge(
                  badgeContent: Text('2'),
                  child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.shopping_cart,
                        size: 20,
                      )),
                )),
            SizedBox(
              width: 10,
            ),
            CircleAvatar(
                backgroundColor: Colors.white,
                radius: 18,
                child: Badge(
                  badgeContent: Text('0'),
                  child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.notifications,
                        size: 20,
                      )),
                )),
            SizedBox(
              width: 15,
            ),
          ],
        ),
        body: Container(margin: EdgeInsets.all(10), child: BodyPage()),
      ),
    );
  }
}

class BodyPage extends StatelessWidget {
  const BodyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          // margin: EdgeInsets.all(10),
          height: 150,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                    'https://t3.ftcdn.net/jpg/02/05/56/54/360_F_205565499_waqtbwXp6KukIa7ilco7GfIErIjIK117.jpg')),
          ),
          child: Row(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 207, bottom: 10),
                        child: Container(
                          height: 60,
                          width: 70,
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(26))),
                          child: Center(
                            child: Text(
                              'Vegi',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  shadows: [
                                    BoxShadow(
                                        color: Colors.green,
                                        blurRadius: 20,
                                        offset: Offset(3, 3))
                                  ]),
                            ),
                          ),
                        ),
                      ),
                      Text(
                        '30% off',
                        style: TextStyle(
                            fontSize: 40,
                            color: Colors.green[100],
                            fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Text(
                          'On all vegetable products',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(child: Container()),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Text(
              'Popular Products :',
              style: TextStyle(fontSize: 20, color: Colors.amber),
            )
          ],
        ),
        CarouselSlider.builder(
          itemCount: 5,
          itemBuilder:
              (BuildContext context, int itemIndex, int pageViewIndex) =>
                  Container(
            margin: EdgeInsets.all(5),
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              child: Image.network(
                "https://gcp-img.slatic.net/lazada/78eb6458-540c-4f92-b854-d4c0918e03a8_BD-1188-344.jpg",
                fit: BoxFit.cover,
              ),
            ),
          ),
          options: CarouselOptions(
            aspectRatio: 16 / 6,
            viewportFraction: 0.8,
            initialPage: 0,
            enableInfiniteScroll: true,
            reverse: false,
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 3),
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            enlargeCenterPage: true,
            enlargeFactor: 0.3,
            scrollDirection: Axis.horizontal,
          ),
        ),

        _buildHerbsProduct(context),
        SizedBox(
          height: 10,
        ),
        _buildFruitProduct(context),
        SizedBox(
          height: 10,
        ),
        _buildRootProduct(context),


      ],
    );
  }
  // Herbla details
  Widget _buildHerbsProduct(context){
    return  Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Herbs Seasonings ',
              style: TextStyle(fontSize: 20, color: Colors.amber),
            ),
            Text(
              'view all ',
              style: TextStyle(fontSize: 20, color: Colors.amber),
            ),

          ],

        ),
        SizedBox(
          height: 10,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [

              SingleProduct(
                onTap1: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ProductOverview(),),);
                  // Navigator.pushNamed(context, ProductOverview.routeName);
                  //Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=> ProductOverview()));
                },
                productName: 'Fresh Basil',
                productImage: 'https://www.pngitem.com/pimgs/m/421-4217380_transparent-background-vegetables-png-png-download.png',
              ),
              SizedBox(
                width: 10,
              ),
              SingleProduct(
                onTap1: (){
                  // Navigator.pushNamed(context, ProductOverview.routeName);
                },
                productName: 'Fresh Basil',
                productImage: 'https://www.pngitem.com/pimgs/m/421-4217380_transparent-background-vegetables-png-png-download.png',
              ),
              SizedBox(
                width: 10,
              ),
              SingleProduct(
                onTap1: (){
                  // Navigator.pushNamed(context, ProductOverview.routeName);
                },
                productName: 'Fresh Basil',
                productImage: 'https://www.pngitem.com/pimgs/m/421-4217380_transparent-background-vegetables-png-png-download.png',
              ),
              SizedBox(
                width: 10,
              ),
              SingleProduct(
                onTap1: (){
                  //Navigator.pushNamed(context, ProductOverview.routeName);
                },
                productName: 'Fresh Basil',
                productImage: 'https://www.pngitem.com/pimgs/m/421-4217380_transparent-background-vegetables-png-png-download.png',
              ),
            ],
          ),
        ),
      ],
    );
  }
  // Fruits details
  Widget _buildFruitProduct(context){
    return  Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Fresh Fruits ',
              style: TextStyle(fontSize: 20, color: Colors.amber),
            ),
            Text(
              'view all ',
              style: TextStyle(fontSize: 20, color: Colors.amber),
            ),

          ],

        ),
        SizedBox(
          height: 10,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [

              SingleProduct(
                onTap1: (){
                   //Navigator.pushNamed(context, ProductOverview.routeName);


                },
                productName: 'Fresh Apple',
                productImage: 'https://thumbs.dreamstime.com/b/red-apple-isolated-clipping-path-19130134.jpg',
              ),
              SizedBox(
                width: 10,
              ),
              SingleProduct(
                onTap1: (){
                  // Navigator.pushNamed(context, ProductOverview.routeName);
                },
                productName: 'Fresh Basil',
                productImage: 'https://www.pngitem.com/pimgs/m/421-4217380_transparent-background-vegetables-png-png-download.png',
              ),
              SizedBox(
                width: 10,
              ),
              SingleProduct(
                onTap1: (){
                  // Navigator.pushNamed(context, ProductOverview.routeName);
                },
                productName: 'Fresh Basil',
                productImage: 'https://www.pngitem.com/pimgs/m/421-4217380_transparent-background-vegetables-png-png-download.png',
              ),
              SizedBox(
                width: 10,
              ),
              SingleProduct(
                onTap1: (){
                  //Navigator.pushNamed(context, ProductOverview.routeName);
                },
                productName: 'Fresh Basil',
                productImage: 'https://www.pngitem.com/pimgs/m/421-4217380_transparent-background-vegetables-png-png-download.png',
              ),
            ],
          ),
        ),
      ],
    );
  }
  Widget _buildRootProduct(context){
    return  Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Fresh Roots ',
              style: TextStyle(fontSize: 20, color: Colors.amber),
            ),
            Text(
              'view all ',
              style: TextStyle(fontSize: 20, color: Colors.amber),
            ),

          ],

        ),
        SizedBox(
          height: 10,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [

              SingleProduct(
                onTap1: (){
                  // Navigator.pushNamed(context, ProductOverview.routeName);
                },
                productName: 'Fresh Root',
                productImage: 'https://balconygardenweb-lhnfx0beomqvnhspx.netdna-ssl.com/wp-content/uploads/2021/08/2.-Daikon2.jpg',
              ),
              SizedBox(
                width: 10,
              ),
              SingleProduct(
                onTap1: (){
                  // Navigator.pushNamed(context, ProductOverview.routeName);
                },
                productName: 'Fresh Basil',
                productImage: 'https://www.pngitem.com/pimgs/m/421-4217380_transparent-background-vegetables-png-png-download.png',
              ),
              SizedBox(
                width: 10,
              ),
              SingleProduct(
                onTap1: (){
                  // Navigator.pushNamed(context, ProductOverview.routeName);
                },
                productName: 'Fresh Basil',
                productImage: 'https://www.pngitem.com/pimgs/m/421-4217380_transparent-background-vegetables-png-png-download.png',
              ),
              SizedBox(
                width: 10,
              ),
              SingleProduct(
                onTap1: (){
                  //Navigator.pushNamed(context, ProductOverview.routeName);
                },
                productName: 'Fresh Basil',
                productImage: 'https://www.pngitem.com/pimgs/m/421-4217380_transparent-background-vegetables-png-png-download.png',
              ),
            ],
          ),
        ),
      ],
    );
  }


}


