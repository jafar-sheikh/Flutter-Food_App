import 'package:flutter/material.dart';
import 'package:food_app/pages/home/drawer_side.dart';

class MyProfile extends StatelessWidget {

  Widget listTile({required IconData icon,required String title}){
    return Column(
      children: [
        Divider(height: 1,),
        ListTile(
          leading: Icon(icon),
          title: Text(title),
          trailing: Icon(Icons.arrow_forward_ios),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.amber,
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('My Profile'),
      ),
     // drawer: DrawerSide(),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: BouncingScrollPhysics(),
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  height: 100,
                  color: Colors.amber,
                ),
                Container(
                  height: 526,
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: ListView(
                    children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                width: 250,
                                height: 80,
                                padding: EdgeInsets.only(left: 20),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text('Abu jafar',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.green),),
                                        SizedBox(height: 10,),
                                        Text('jafar@gmail.com',style: TextStyle(fontSize: 20,color: Colors.green),),
                                      ],
                                    ),
                                    CircleAvatar(
                                      radius: 15,
                                      backgroundColor: Colors.grey,
                                      child: Icon(Icons.edit,color: Colors.red,),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                      listTile(
                        icon: Icons.shop_outlined,
                        title: 'My Order'

                      ),listTile(
                        icon: Icons.location_on_outlined,
                        title: 'My Delivery Address'

                      ),listTile(
                        icon: Icons.person_outline,
                        title: 'Refer a Friends'

                      ),listTile(
                        icon: Icons.file_copy_outlined,
                        title: 'Terms & Conditions'

                      ),listTile(
                        icon: Icons.policy_outlined,
                        title: 'Privacy policy'

                      ),listTile(
                        icon: Icons.add_chart,
                        title: 'About'

                      ),listTile(
                        icon: Icons.exit_to_app_outlined,
                        title: 'Log Out'

                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding:  EdgeInsets.only(top: 40, left: 30),
              child: CircleAvatar(
                radius: 50,
                backgroundColor: Colors.amber,
                child: CircleAvatar(
                  radius: 45,
                  backgroundColor: Colors.red,
                  backgroundImage: AssetImage('assets/images/jafar.jpg'),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
