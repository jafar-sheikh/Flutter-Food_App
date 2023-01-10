
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:food_app/models/userdetails.dart';

final auth = FirebaseAuth.instance;
class Database{

  //register
  Future<User?> register( String email, String password) async{
    final User? user =(await auth.createUserWithEmailAndPassword(email: email, password: password)).user;

    return user;
  }

  void saveUser(UserDetails userDetails){
    final database = FirebaseDatabase.instance;
    database.ref('Users').child(userDetails.userId).set(userDetails.toJson());//save user to database

  }
  // login

Future<User?> login(String email, String password) async {
    final User? user = (await auth.signInWithEmailAndPassword(email: email, password: password)).user;
    return user;
}

//logout

Future<void> logout() async{
    return auth.signOut();
}



}