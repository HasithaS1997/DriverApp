import 'package:DriverApp/adduser.dart';
import 'package:DriverApp/models/user.dart';
// import 'package:DriverApp/models/user.dart';
import 'package:DriverApp/screens/login.dart';
import 'package:DriverApp/screens/adduser.dart';
import 'package:DriverApp/shared/models/editinfo.dart';
import 'package:DriverApp/shared/models/userinfo.dart';
// import 'package:DriverApp/services/auth.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // final AuthService _auth = AuthService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HOME'),
      ),
      backgroundColor: Colors.white,
      drawer: new Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: new Text("Hasitha Senevirathne"),
              accountEmail: new Text("hasitha@plymouth.ac.uk"),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Profile"),
            ),
            ListTile(
              leading: Icon(Icons.help),
              title: Text("Help"),
            ),
            ListTile(
              leading: Icon(Icons.feedback),
              title: Text("Feedback"),
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text("About"),
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text("Logout"),
              onTap: () async {
                
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
              },
            ),
          ],
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image:
              DecorationImage(image: AssetImage("assets/images/9-running-firefighter-with-firetruck-cartoon-clipart.jpg")),
              
        ),
        padding: EdgeInsets.all(30.0),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 12.0,
          mainAxisSpacing: 12.0,
          padding: EdgeInsets.all(1.0),
          children: <Widget>[
            Card(
                margin: EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {
                     //Navigator.push(context, MaterialPageRoute(builder: (ctx) => RegistrationPage()));
                  },
                  splashColor: Colors.pink,
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Icon(
                          Icons.notification_important,
                          size: 70.0,
                          color: Colors.pink[700],
                        ),
                        Text("Notifcation",
                            style: new TextStyle(fontSize: 17.0))
                      ],
                    ),
                  ),
                )),
            Card(
                margin: EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {
                    //Navigator.push(context, MaterialPageRoute(builder: (ctx) => AddUser()));
                  },
                  splashColor: Colors.pink,
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Icon(
                          Icons.directions,
                          size: 70.0,
                          color: Colors.blue[700],
                        ),
                        Text("Directions", style: new TextStyle(fontSize: 17.0))
                      ],
                    ),
                  ),
                )),
            Card(
                margin: EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {
                   Navigator.push(context,
                      MaterialPageRoute(builder: (ctx) =>AddContacts()));
                  },
                  splashColor: Colors.pink,
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Icon(
                          Icons.person_add,
                          color: Colors.orange[400],
                          size: 70.0,
                        ),
                        Text("Add New User",
                            style: new TextStyle(fontSize: 17.0))
                      ],
                    ),
                  ),
                )),
            Card(
                margin: EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {
                    //Navigator.push(context, MaterialPageRoute(builder: (ctx) => RegistrationPage()));
                  },
                  splashColor: Colors.pink,
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Icon(
                          Icons.message,
                          size: 70.0,
                          color: Colors.green[700],
                        ),
                        Text(
                          "Messages",
                          style: new TextStyle(fontSize: 17.0),
                        ),
                      ],
                    ),
                  ),
                )),
            Card(
                margin: EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {
                     Navigator.push(context, MaterialPageRoute(builder: (ctx) =>Contacts()));
                  },
                  splashColor: Colors.pink,
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Icon(
                          Icons.info,
                          size: 70.0,
                          color: Colors.purple[700],
                        ),
                        Text(
                          "Userinfo",
                          style: new TextStyle(fontSize: 17.0),
                        ),
                      ],
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
