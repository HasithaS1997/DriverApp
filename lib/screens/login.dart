//import 'dart:html';
// ignore: unused_import
//import 'dart:wasm';

import 'package:DriverApp/background.dart';
import 'package:DriverApp/components/Dashboard.dart';
import 'package:DriverApp/screens/register.dart';
// import 'package:loginpage/authenticate/user.dart';
// import 'package:loginpage/models/Addcard.dart';
// import 'package:loginpage/screens/background.dart';
// import 'package:loginpage/screens/homepage.dart';
// import 'package:loginpage/screens/registerpage.dart';
// import 'package:loginpage/services/auth.dart';
// import 'package:loginpage/shared/loading.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
// ignore: unused_import
//import '.';

import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:firebase_auth/firebase_auth.dart';

enum LoginFormType { login, register }

class Login extends StatefulWidget {
  // final Function toggleView;
  // Login({this.toggleView, void Function() toggleview});
  // const Login({Key key, @required this.onLogIn,@required this.auth}) : super(key: key);
  // final AuthBase auth;
  // final void Function(User) onLogIn;

  // Future<void> _signInAnonymously() async {
  //   try {
  //     final user = await auth.signInAnonymously();
  //     onLogIn(user);

  //   } catch (e) {
  //     print(e.toString());
  //   }
  // }

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  
  // final AuthService _auth = AuthService();
  // final _formKey = GlobalKey<FormState>();

  final _auth = FirebaseAuth.instance;
  String email;
  String password;

  bool showSpinner = false;
  // final TextEditingController _emailController = TextEditingController();
  // final TextEditingController _passwordController = TextEditingController();

  // // ignore: unused_field
  // LoginFormType _formType = LoginFormType.login;

  // void _login() {
  //   print(
  //       'email: ${_emailController.text}, password: ${_passwordController.text}');
  // }

  // void _signInWithEmail(BuildContext context){

  // }

  // //Text field state
  // String email = "";
  // String password = "";
  // String error = "";

  @override
  Widget build(BuildContext context) {
    return 
      Scaffold(
            //backgroundColor: Colors.purple[100],
            appBar: AppBar(
              // backgroundColor: Colors.purple[400],
              elevation: 0.0,
              title: Text('FireAlert'),
              // actions: <Widget>[
              //   // ignore: deprecated_member_use
              //   // FlatButton.icon(
              //   //   icon: Icon(Icons.person),
              //   //   label: Text('Register'),
              //   //   onPressed: () {
              //   //     widget.toggleView();
              //   //   },
              //   // ),
              // ],
            ),
            resizeToAvoidBottomInset: false,
            // ignore: missing_required_param
            body:ModalProgressHUD(
              inAsyncCall: showSpinner,
                          child: Background(
                child: Container(
                  child: Column(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.25,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/images/loginimage.png'))),
                      ),
                      Container(
                        child: Form(
                            //  key: _formKey,
                            child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              // final primaryText =  _formType == LoginFormType.login ?
                              // 'Login': 'create an account'

                              child: TextField(
                                // controller: _emailController,
                                keyboardType: TextInputType.emailAddress,
                                onChanged: (value) {
                                  email = value;
                                },
                                //   validator: (val) => val.isEmpty ? 'Enter an email' : null,

                                decoration: InputDecoration(
                                  labelText: "Email",
                                  prefixIcon: Icon(Icons.account_circle),
                                  labelStyle: TextStyle(
                                      fontSize: 14, color: Colors.grey.shade400),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(
                                      color: Colors.blue,
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: BorderSide(
                                        color: Colors.blue,
                                      )),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: TextFormField(
                                  obscureText: true,
                                  onChanged: (value) {
                                    password = value;
                                  },
                                  // controller: _passwordController,
                                  //  validator: (val) => val.length < 6
                                  //   ? 'Enter an 6 character password'
                                  //   : null,
                                  // onChanged: (val) {
                                  //   setState(() => password = val);
                                  // },
                                  decoration: InputDecoration(
                                    labelText: "Password",
                                    prefixIcon: Icon(Icons.lock),
                                    labelStyle: TextStyle(
                                        fontSize: 14,
                                        color: Colors.grey.shade400),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: BorderSide(
                                        color: Colors.blue,
                                      ),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: BorderSide(
                                          color: Colors.blue,
                                        )),
                                  )),
                            ),
                            Container(
                              alignment: Alignment.center,
                              margin: EdgeInsets.symmetric(
                                  horizontal: 40, vertical: 10),
                              child: Text(
                                "Forgot your password?",
                                style: TextStyle(
                                    fontSize: 15, color: Color(0XFF2661FA)),
                              ),
                            ),
                          ],
                        )),
                      ),
                      RaisedButton(
                          color: Colors.blue,
                          child: Text(
                            'Login',
                            style: TextStyle(color: Colors.white),
                          ),
                          onPressed: () async {
                            setState(() {
                              showSpinner = true;
                            });
                            // print(email);
                            // print(password);
                            try {
                              final user =
                                  await _auth.signInWithEmailAndPassword(
                                  email: email, password: password);

                                  if(user != null){
                                    Navigator.push(context, MaterialPageRoute(builder: (ctx)=>Home()));
                                  }
                                  setState(() {
                                    showSpinner = false;
                                  });
                            } catch (e) {
                              print(e);
                            }
                          }

                          // print('valid');

                          // if (result == null) {
                          //   setState(() => error = 'please enter valid email');

                          // }
                          ),
                      SizedBox(height: 12.0),
                      Container(
                          alignment: Alignment.bottomRight,
                          margin:
                              EdgeInsets.symmetric(horizontal: 35, vertical: 10),
                          child: GestureDetector(
                            onTap: () => {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (ctx) => RegisterPage()))
                            },
                            child: Text(
                              "Dont Have an Account? Sign Up",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF2661FA)),
                            ),
                          ))
                    ],
                  ),
                ),
              ),
            ));
  }
}
