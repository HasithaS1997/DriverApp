// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:DriverApp/adduser.dart';

// class Users {
//   String name;
//   String address;
//   int teleno;
 

//   DocumentReference documentReference;

//   Users({this.name, this.address,});

//   Users.fromMap(Map<String, dynamic> map, {this.documentReference}) {
//     name = map["name"];
//     address = map["address"];
//     // teleno = map["teleno"];
 
//   }
//   Users.fromSnapshot(DocumentSnapshot snapshot)
//       : this.fromMap(snapshot.data, documentReference: snapshot.reference);

//   toJson() {
//     return {"name": name, "address": address};
//   }
// }
