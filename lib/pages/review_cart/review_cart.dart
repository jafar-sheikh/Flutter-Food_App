

import 'package:flutter/material.dart';
import 'package:food_app/widgets/single_item.dart';

class ReviewCart extends StatelessWidget {
  const ReviewCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ListTile(
        title: Text('Total Amount'),
        subtitle: Text('1700 TK',style: TextStyle(color: Colors.green[600],fontSize: 20),),
        trailing: Container(
          width: 160,
          child: MaterialButton(
            child: Text('Submit'),
            color: Colors.amber,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            onPressed: (){},
          ),
        ),
      ),
      appBar: AppBar(
        title: Text('Review Cart'),
      ),
      body: ListView(

        children: [

          SizedBox(height: 10,),
          SingleItem(isBool: true,),
          SizedBox(height: 10,),
          SingleItem(isBool: true,),
          SizedBox(height: 10,),
          SingleItem(isBool: true,),
          SizedBox(height: 10,),
          SingleItem(isBool: true,),
          SizedBox(height: 10,),
          SingleItem(isBool: true,),



          SizedBox(height: 10,),
        ],
      ),
    );
  }
}
