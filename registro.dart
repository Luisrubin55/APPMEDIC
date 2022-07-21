import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class Registro extends StatefulWidget {
  static String id = 'registro';

  final _formKey = GlobalKey<FormState>();
  final usuarioController = TextEditingController();
  final correoController = TextEditingController();
  final passwordController = TextEditingController();
  final edadController = TextEditingController();
  final pesoController = TextEditingController();
  final alturaController = TextEditingController();





  @override
  State<Registro> createState() => _RegistroState();
}


class _RegistroState extends State<Registro> {

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.cyan,
        body: Center(
          child: ListView(
            shrinkWrap: true,
            padding: EdgeInsets.all(32),
            children: <Widget>[
              Flexible(
                child: Image.asset(
                  'assets/LogoWhiteTr.png',
                  height: 200.0,
                ),
              ),
              
              SizedBox(
                height: 1.0,
              ),
              _nombreTextField(),
              SizedBox(
                height: 1,
              ),
              _correoTextField(),
              SizedBox(
                height: 1,
              ),
              SizedBox(
                height: 5,
              ),
              _passwordTextField(),
              _edadTextField(),
              SizedBox(
                height: 5,
              ),
              SizedBox(
                height: 5,
              ),
              _pesoTextField(),
              SizedBox(
                height: 5,
              ),
              _estaturaTextField(),
              SizedBox(
                height: 5,
              ),
              _buttonLogin(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _nombreTextField() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: TextField(
          
          keyboardType: TextInputType.name,
          decoration: InputDecoration(
            icon: Icon(Icons.account_box),
            hintText: 'Nombre',
            labelText: 'Nombre',
            
          ),
          onChanged: (value) {},
        ),
      );
    });
  }

  Widget _correoTextField() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: TextField(
          keyboardType: TextInputType.name,
          decoration: InputDecoration(
            icon: Icon(Icons.people_alt),
            hintText: 'ejemplo@ejemplo.com',
            labelText: 'e-mail',
          ),
          onChanged: (value) {},
        ),
      );
    });
  }

  Widget _passwordTextField() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: TextField(
          
          keyboardType: TextInputType.emailAddress,
          obscureText: true,
          decoration: InputDecoration(
            icon: Icon(Icons.lock),
            hintText: 'Contraseña',
            labelText: 'Contraseña',
          ),
          onChanged: (value) {},
        ),
      );
    });
  }

  _edadTextField() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: TextField(
          keyboardType: TextInputType.name,
          decoration: InputDecoration(
            icon: Icon(Icons.punch_clock),
            hintText: '18',
            labelText: 'Edad',
          ),
          onChanged: (value) {},
        ),
      );
    });
  }

  _pesoTextField() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: TextField(
          keyboardType: TextInputType.name,
          decoration: InputDecoration(
            icon: Icon(Icons.balance_sharp),
            hintText: '65',
            labelText: 'Peso en Kg',
          ),
          onChanged: (value) {},
        ),
      );
    });
  }

  _estaturaTextField() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 0),
        child: TextField(
          keyboardType: TextInputType.name,
          decoration: InputDecoration(
            icon: Icon(Icons.accessibility_rounded),
            hintText: '1.55',
            labelText: 'Estatura (M)',
          ),
          onChanged: (value) {},
        ),
      );
    });
  }

  Widget _buttonLogin() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return RaisedButton(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 5.0),
            child: Text(
              'Registrarse',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          elevation: 10.0,
          color: Colors.blue[300],
          onPressed: () {

          });
    });
  }
}
