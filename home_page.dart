import 'package:appmedic/home.dart';
import 'package:appmedic/perfil.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/rendering.dart';



class HomePage extends StatefulWidget {
  HomeState createState()=> HomeState();

}

class HomeState extends State<HomePage>{
  int _selectDrawerItem = 0;


  _getDrawerItemWidget(int pos){
    switch(pos){
      case 0: return Home();
      case 1: return Perfil();
    }
  }

  _onSelectItem(int pos){
    setState(() {
      Navigator.of(context).pop();
      _selectDrawerItem = pos;
      print(pos);
    });
  }
@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("App Medic"),
      backgroundColor: Colors.cyan[300],
    ),
      backgroundColor: Colors.white,
      body: _getDrawerItemWidget(_selectDrawerItem),
   
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Luis Armando"), 
              accountEmail: Text("luisrubin55@gmail.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Color.fromARGB(255, 221, 33, 0),
                child: Text('L',style: TextStyle(fontSize: 40),),
              ),
            ),
            ListTile(
              title: Text(
                'Home',
                style: TextStyle(
                fontSize: 20,
                ),
              ),
              leading: Icon(Icons.home),
              selected: (0==_selectDrawerItem),
              onTap: () {
                _onSelectItem(0);
              },
            ),
            ListTile(
              title: Text(
                'Perfil',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              leading: Icon(Icons.account_box),
              selected: (1==_selectDrawerItem),
              onTap: () {
                // Update the state of the app
                _onSelectItem(1);
                // Then close the drawer
              },
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              title: Text(
                'Estado de salud',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              leading: Icon(Icons.check_box),
              selected: (2==_selectDrawerItem),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                
              },
            ),
            ListTile(
              title: Text(
                'Historial Medico',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              leading: Icon(Icons.medication),
              selected: (3==_selectDrawerItem),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                
              },
            ),
            SizedBox(height:120),
            Divider(),
            ListTile(
              title: Text(
                'Configuracion',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              leading: Icon(Icons.settings),
              selected: (4==_selectDrawerItem),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                
              },
            ),
            ListTile(
              title: Text(
                'Ayuda',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              leading: Icon(Icons.help),
              selected: (5==_selectDrawerItem),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                
              },
            ),
            ListTile(
              title: Text(
                'Log out',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              leading: Icon(Icons.logout),
              selected: (6==_selectDrawerItem),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                
              },
            ),
          ],
        ),
      ),
      
    );
  }
}

