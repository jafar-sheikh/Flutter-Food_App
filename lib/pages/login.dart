import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:food_app/models/userdetails.dart';
import 'package:food_app/pages/home/home_page.dart';

import 'package:food_app/pages/register_screen.dart';
import 'package:food_app/servise/database.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);
  static const String routeName = '/loging';

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign In'),
      ),
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/images/loginbg.jpg'),
            ),
          ),
          child: LoginBody(),
        ),
      ),
    );
  }
}

class LoginBody extends StatefulWidget {
  LoginBody({Key? key}) : super(key: key);

  @override
  State<LoginBody> createState() => _LoginBodyState();
}

class _LoginBodyState extends State<LoginBody> {
  final _formKey = GlobalKey<FormState>();
  bool isPasswordVisible = false;
  String? email;
  String? password;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(15),
      children: <Widget>[
        SizedBox(
          height: 16,
        ),
        Text(
          'Wellcome to my Food App',
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.bodyText1,
        ),
        SizedBox(
          height: 16,
        ),
        Text(
          'Sign in to continue',
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.headline4,
        ),
        SizedBox(
          height: 16,
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Email',
                    hintText: 'Enter your email',
                    suffixIcon: Icon(Icons.email),
                  ),
                  onChanged: (value) {
                    email = value;
                  },
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'please enter your email';
                    }
                    // check email valid
                    if (!RegExp(
                            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                        .hasMatch(value)) {
                      return 'please enter a valid email';
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 25,
                ),
                TextFormField(
                  obscureText: !isPasswordVisible,
                  onChanged: (value) {
                    password = value;
                  },
                  decoration: InputDecoration(
                      labelText: 'Password',
                      hintText: 'Enter your Password',
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            isPasswordVisible = !isPasswordVisible;
                          });
                        },
                        icon: Icon(isPasswordVisible
                            ? Icons.visibility
                            : Icons.visibility_off),
                      )),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'please enter your Password';
                    }
                    if (value.length < 6) {
                      return 'Password must be at least 6 characters';
                    }

                    return null;
                  },
                ),
                SizedBox(
                  height: 25,
                ),
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      // If the form is valid, display a snackbar. In the real world,
                      // you'd often call a server or save the information in a database.
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Form is submit')),
                      );
                     Database().login(email! , password!).then((user){
                       if(user != null){
                         Navigator.pushNamed(context, HomePage.routeName);
                       }

                     });
                    }
                  },
                  child: Container(
                    height: 50,
                      width: 300,
                      padding: EdgeInsets.all(10),

                      child: Text(
                    'Login In',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20, color: Colors.green),
                  )),
                ),

                SizedBox(height: 32,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account?", style: TextStyle(fontSize: 20),),
                    TextButton(onPressed: (){
                      Navigator.pushNamed(context, RegisterScreen.routeName);
                    }, child: Text('Sign Up',style: TextStyle(fontSize:20, color: Colors.red),)),
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
