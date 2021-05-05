import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class AddContacts extends StatefulWidget {
  @override
  _AddContactsState createState() => _AddContactsState();
}

class _AddContactsState extends State<AddContacts> {
  TextEditingController _nameController, _numberController,_addressController;
  String _typeSelected ='';

DatabaseReference _ref;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _nameController = TextEditingController();
    _numberController = TextEditingController();
    _addressController = TextEditingController();
    _ref = FirebaseDatabase.instance.reference().child('Contacts');
  }


Widget _buildContactType(String title){

  return InkWell(

    child: Container(
      height: 35,
      width: 85,

      decoration: BoxDecoration(
        color: _typeSelected == title? Colors.green : Theme.of(context).accentColor,
        borderRadius: BorderRadius.circular(15),
      ),

      child: Center(child: Text(title, style: TextStyle(fontSize: 18,
      color: Colors.white),
    ),),),

    onTap: (){
      setState(() {
        _typeSelected = title;
      });
    },
  );
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Save Contact'),
      ),
      body: Container(
        margin: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              controller: _nameController,
              decoration: InputDecoration(
                hintText: 'Enter Name',
                prefixIcon: Icon(
                  Icons.account_circle,
                  size: 25,
                ),
                fillColor: Colors.white,
                filled: true,
                contentPadding: EdgeInsets.all(15),
              ),
            ),
            SizedBox(height: 15),
            TextFormField(
              controller: _numberController,
              decoration: InputDecoration(
                hintText: 'Enter Number',
                prefixIcon: Icon(
                  Icons.phone_iphone,
                  size: 25,
                ),
                fillColor: Colors.white,
                filled: true,
                contentPadding: EdgeInsets.all(15),
              ),
            ),
           SizedBox(height: 15,),
           Container(
             height: 30,
             child: ListView(

              

               scrollDirection: Axis.horizontal,
               children: [
                 Text("Gender:"
                 
                 ),
                 _buildContactType('Male'),
                 SizedBox(width: 80),
                 
                 _buildContactType('Female'),
                 SizedBox(width: 50),
                
               ],
             ),
           ),
           SizedBox(height: 25,),
          TextFormField(
              controller: _addressController,
              decoration: InputDecoration(
                hintText: 'Address',
                prefixIcon: Icon(
                  Icons.home,
                  size: 25,
                ),
                fillColor: Colors.white,
                filled: true,
                contentPadding: EdgeInsets.all(15),
              ),
            ),
           SizedBox(height: 10,),
           Container(
             width: double.infinity,
             padding: EdgeInsets.symmetric(horizontal: 10),
             child: RaisedButton(child: Text('Save Contact',style: TextStyle(
               fontSize: 20,
               color: Colors.white,
               fontWeight: FontWeight.w600,

             ),),
             onPressed: (){
               saveContact();
             },

             color: Theme.of(context).primaryColor,
             ),
           )

          ],
        ),
      ),
    );
  }
  void saveContact(){

   String name = _nameController.text;
    String number = _numberController.text;
    String address = _addressController.text;

    Map<String,String> contact = {
      'name':name,
      'number': '+94 ' + number,
      'type': _typeSelected,
      'address' : address,
    };

    _ref.push().set(contact).then((value) {
      Navigator.pop(context);
    });


  }
}
































