import 'package:flutter/material.dart';
// ignore: unused_import
//import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'Dashboard.dart';


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'HomePage',
      theme: ThemeData(
        primaryColor: new Color(0xff622F74),
      ),
      //home: Dashboard(),




    );
    
  }
}










































// import 'package:DriverApp/main.dart';
// import 'package:DriverApp/screens/login.dart';
// import 'package:flutter/material.dart';

// void main(List<String> args) {
//   runApp(new MaterialApp(
//     home: Home(),
//   ));
// }

// class Home extends StatefulWidget {
//   @override
//   _HomeState createState() => _HomeState();
// }

// class _HomeState extends State<Home> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: new AppBar(
//           title: Text("Home Page"),
//           backgroundColor: Colors.lightBlue,
//         ),
//         backgroundColor: Colors.white,
//         drawer: new Drawer(
//           child: ListView(
//             children: <Widget>[
//               UserAccountsDrawerHeader(
//                 accountName: new Text(
//                   "Hasitha Senevirathne",
//                   style: new TextStyle(
//                       fontWeight: FontWeight.bold, fontSize: 17.0),
//                 ),
//                 accountEmail: new Text("hsenevirathne997@gmail.com"),
//                 currentAccountPicture: CircleAvatar(
//                   backgroundImage: NetworkImage(
//                       "https://www.123rf.com/photo_105361872_stock-vector-firefighter-avatar-character-icon-vector-illustration-design.html"),
//                 ),
//               ),
//               ListTile(
//                 leading: Icon(Icons.person),
//                 title: Text("profile"),
//               ),
//               ListTile(
//                 leading: Icon(Icons.settings),
//                 title: Text("Settings"),
//               ),
//               ListTile(
//                 leading: Icon(Icons.help),
//                 title: Text("Help"),
//               ),
//               ListTile(
//                 leading: Icon(Icons.info),
//                 title: Text("About"),
//               ),
//               ListTile(
//                 leading: Icon(Icons.logout),
//                 title: Text("Logout"),
//                 onTap: () {
//                   Navigator.push(context,
//                       MaterialPageRoute(builder: (context) => LoginScreen()));
//                 },
//               )
//             ],
//           ),
//         ),
//         body: Container(
//           child: GridView.count(
//             crossAxisCount: 2,
//             children: <Widget>[

//               MyMenu(
//                 title: "Notifications",
//                 icon: Icons.notification_important,
//                 warna: Colors.red,
//                 ontap: () {
//                   // Navigator.push(context,MaterialPageRoute(builder:(context)=>NotificationPage()));
//                 },
//               ),
//               MyMenu(
//                 title: "Directions",
//                 icon: Icons.map,
//                 warna: Colors.blue,
//                 ontap: () {
//                   //Navigator.push(context,MaterialPageRoute(builder:(context)=>Map()));
//                 },
//               ),
//               MyMenu(
//                 title: "Call log",
//                 icon: Icons.call,
//                 warna: Colors.green,
              
//               ),
//               MyMenu(
//                 title: "Users",
//                 icon: Icons.account_box,
//                 warna: Colors.brown,
                
//               ),
//               MyMenu(
//                 title: "User Feedback",
//                 icon: Icons.feedback,
//                 warna: Colors.purple,
//               ),
//             ],
//           ),
//         ));
//   }
// }

// class MyMenu extends StatelessWidget {
//   MyMenu({this.title, this.icon, this.warna, this.ontap});
//   final String title;
//   final Function ontap;
//   final IconData icon;
//   final MaterialColor warna;

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       margin: EdgeInsets.all(20.0),
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.all(Radius.circular(10)),
//         side: BorderSide(color: Colors.orange),
//       ),
//       child: InkWell(
//         onTap: ontap,
//         splashColor: Colors.green,
//         child: Center(
//           child: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: <Widget>[
              
//               Icon(
//                 icon,
//                 size: 70.0,
//                 color: warna,
//               ),
//               Text(title, style: new TextStyle(fontSize: 17.0))
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class ShapesPainter extends CustomPainter {
//   @override
//   void paint(Canvas canvas, Size size) {
//     final paint = Paint();
//     // set the paint color to be white
//     paint.color = Colors.white;
//     // Create a rectangle with size and width same as the canvas
//     var rect = Rect.fromLTWH(0, 0, size.width, size.height);
//     // draw the rectangle using the paint
//     canvas.drawRect(rect, paint);
//     paint.color = Colors.greenAccent[400];
//     // create a path
//     var path = Path();
//     path.lineTo(0, size.height);
//     path.lineTo(size.width, 0);
//     // close the path to form a bounded shape
//     path.close();
//     canvas.drawPath(path, paint);
//     /* // set the color property of the paint
//     paint.color = Colors.deepOrange;
//     // center of the canvas is (x,y) => (width/2, height/2)
//     var center = Offset(size.width / 2, size.height / 2);
//     // draw the circle with center having radius 75.0
//     canvas.drawCircle(center, 75.0, paint);*/
//   }

//   @override
//   bool shouldRepaint(CustomPainter oldDelegate) => false;
// }
