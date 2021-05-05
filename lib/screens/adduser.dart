
// import 'package:DriverApp/screens/register.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:firebase/firestore.dart';



// class RegistrationPage extends StatefulWidget {
//   @override
//   _RegistrationPageState createState() => _RegistrationPageState();
// }

// class _RegistrationPageState extends State<RegistrationPage> {

//   String _registerPassword, _registerEmail,confirmPassword;
  


//   @override
//   Widget build(BuildContext context) {

//     var medialQ = MediaQuery.of(context).size;

//     return  SafeArea(
//       child: Scaffold(

//           body: SingleChildScrollView(
//             child: Column(
//               //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 Container(
//                   height: medialQ.height*0.25,
//                   width: double.infinity,
//                   decoration: BoxDecoration(
//                       color: Color(0xFFff8000),
//                       borderRadius: BorderRadius.only(
//                           bottomLeft: Radius.circular(30),
//                           bottomRight: Radius.circular(30)
//                       )
//                   ),
//                   child: Padding(
//                     padding: const EdgeInsets.only(left:28.0),
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text("Welcome! ",),
//                         SizedBox(height: medialQ.height*0.03,),
//                         Text('Register Here...',),

//                       ],
//                     ),
//                   ),
//                 ),
//                 SizedBox(height: 40,),
//                 Padding(
//                   padding: const EdgeInsets.all(25.0),
//                   child: Form(
                  
//                     child: Column(
//                       children: [
//                         TextFormField(
//                             onChanged: (value) {
//                               _registerEmail = value;
//                             },
//                             validator: (value) {
//                               if (value.trim().isEmpty) {
//                                 return " Email can not be emplty";
//                               }
//                             },
//                             decoration: InputDecoration(
//                               labelText: "Email",
//                               labelStyle: TextStyle(
//                                   fontSize: 14, color: Colors.black),
//                               enabledBorder: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(10),
//                                 borderSide: BorderSide(
//                                   color: Color(0xFFff8000),
//                                 ),
//                               ),
//                               focusedBorder: OutlineInputBorder(
//                                   borderRadius: BorderRadius.circular(10),
//                                   borderSide: BorderSide(
//                                     color: Color(0xFFff8000),
//                                   )),
//                             )),
//                         SizedBox(
//                           height: 36,
//                         ),
//                         //TODO password is here...................................................................................................
//                         TextFormField(
//                             obscureText: true,
//                             onChanged: (value) {
//                               _registerPassword = value;
//                             },
//                             validator: (value) {
//                               if (value.trim().isEmpty) {
//                                 return " Password can not be emplty";
//                               }
//                             },
//                             decoration: InputDecoration(
//                               labelText: "Password",
//                               labelStyle: TextStyle(
//                                   fontSize: 14, color: Colors.black),
//                               enabledBorder: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(10),
//                                 borderSide: BorderSide(
//                                   color: Color(0xFFff8000),
//                                 ),
//                               ),
//                               focusedBorder: OutlineInputBorder(
//                                   borderRadius: BorderRadius.circular(10),
//                                   borderSide: BorderSide(
//                                     color: Color(0xFFff8000),
//                                   )),
//                             )),
//                         SizedBox(
//                           height: 36,
//                         ),
//                         TextFormField(
//                             obscureText: true,
//                             onChanged: (value) {
//                               confirmPassword = value;
//                             },
//                             validator: (value) {
//                               if (value.trim().isEmpty) {
//                                 return " Password can not be emplty";
//                               }
//                             },
//                             decoration: InputDecoration(
//                               labelText: "Confirm Password",
//                               labelStyle: TextStyle(
//                                   fontSize: 14, color: Colors.black),
//                               enabledBorder: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(10),
//                                 borderSide: BorderSide(
//                                   color: Color(0xFFff8000),
//                                 ),
//                               ),
//                               focusedBorder: OutlineInputBorder(
//                                   borderRadius: BorderRadius.circular(10),
//                                   borderSide: BorderSide(
//                                     color: Color(0xFFff8000),
//                                   )),
//                             )),


//                         SizedBox(height: 40,),
//                         Container(
//                           height: medialQ.height*0.065,
//                           padding: EdgeInsets.only(top: 3,left: 3),
//                           decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(50),
//                               border: Border(
//                                 bottom: BorderSide(color: Colors.deepOrange),
//                                 top: BorderSide(color: Colors.deepOrange),
//                                 right: BorderSide(color: Colors.deepOrange),
//                                 left: BorderSide(color: Colors.deepOrange),
//                               )
//                           ),
//                           child: MaterialButton(
//                             minWidth: double.infinity,
//                             height: 60,
//                             onPressed: (){
                              
//                             },
//                             color: Color(0xFFff8940),
//                             elevation: 0,
//                             shape: RoundedRectangleBorder(
//                                 borderRadius: BorderRadius.circular(50)
//                             ),
//                             child: Text('Register'),
//                           ),
//                         ),

//                         SizedBox(height: 10,),

//                       ],
//                     ),
//                   ),
//                 ),

//               ],
//             ),
//           )
//       ),
//     );
//   }
// }
