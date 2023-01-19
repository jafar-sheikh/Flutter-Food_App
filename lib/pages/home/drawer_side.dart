import 'package:flutter/material.dart';
import 'package:food_app/pages/my_profile/my_profile.dart';
import 'package:food_app/pages/review_cart/review_cart.dart';

class DrawerSide extends StatelessWidget {
  const DrawerSide({Key? key}) : super(key: key);

  Widget listTile(
      {required IconData icon,
      required String title,
      required Function onTap}) {
    return ListTile(
      onTap: () => onTap(),
      leading: Icon(
        icon,
        size: 30,
      ),
      title: Text(
        title,
        style: TextStyle(
          color: Colors.black45,
          fontSize: 20,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
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
            listTile(
              onTap: (){},
                icon: Icons.home,
                title: "Home"),
            listTile(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ReviewCart()));
                },
                icon: Icons.shop_rounded,
                title: "Review Cart"),
            listTile(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>MyProfile()));
                },
                icon: Icons.person_outline,
                title: "My Profile"),
            listTile(onTap: (){},icon: Icons.notifications_outlined, title: "Notification"),
            listTile(onTap: (){},icon: Icons.star_outline, title: "Rating & Review"),
            listTile(onTap: (){},icon: Icons.favorite_outlined, title: "Wishlist"),
            listTile(onTap: (){},icon: Icons.copy_outlined, title: "Raise a Complaint"),
            listTile(onTap: (){},icon: Icons.format_quote_outlined, title: "FAQs"),
            Container(
              margin: EdgeInsets.only(left: 10),
              height: 200,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Contact Support',
                    style: TextStyle(fontSize: 17, color: Colors.black45),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text('Coll us :',
                          style:
                              TextStyle(fontSize: 17, color: Colors.black45)),
                      SizedBox(
                        width: 10,
                      ),
                      Text('01734940346',
                          style:
                              TextStyle(fontSize: 17, color: Colors.black45)),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Text('Mail us :',
                          style:
                              TextStyle(fontSize: 17, color: Colors.black45)),
                      SizedBox(
                        width: 10,
                      ),
                      Text('jafar.sheikh2021@gmail.com',
                          style:
                              TextStyle(fontSize: 15, color: Colors.black45)),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    child: Text(
                      'Developed By Abu jafar',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.red,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
