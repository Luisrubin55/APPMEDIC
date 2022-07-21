import 'package:appmedic/home_page.dart';
import 'package:flutter/material.dart';
import 'package:appmedic/registro.dart';

class LoginPer extends StatefulWidget {
  static String id = 'loginPage';

  @override
  State<LoginPer> createState() => _LoginPerState();
}

class _LoginPerState extends State<LoginPer> {
  bool _loading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(vertical: 30),
            decoration: BoxDecoration(
                gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 2, 219, 248),
                Color.fromARGB(255, 0, 144, 163),
              ],
            ),
          ),
            child: Image.asset(
              "assets/LogoWhiteTr.png",
              color: Colors.white,
              height: 280,
            ),
          ),

          Transform.translate(
            offset: Offset(0,-30),
            child: Center(
              child: SingleChildScrollView(
                child: Card(
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)
                  ),
                  margin: const EdgeInsets.only(left: 20, right: 20, top: 260, bottom: 20),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 35, vertical: 20),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        TextFormField(
                          decoration: InputDecoration(labelText: "Usuario",hintText: "ejemplo@ejemplo.com"),
                        ),
                        SizedBox(height: 40),
                        TextFormField(
                          decoration: InputDecoration(labelText: "Contraseña",hintText: "@A12345"),
                          obscureText: true,
                        ),
                        SizedBox(height: 40,),
                        
                        RaisedButton(
                          color: Theme.of(context).primaryColor,
                          padding: const EdgeInsets.symmetric(vertical: 15),
                          textColor: Colors.white,
                          onPressed: () {
                            _login(context);
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text("Iniciar Sesion"),
                            
                              if(_loading)
                              Container(
                                height: 20,
                                width: 20,
                                margin: const EdgeInsets.only(left: 20),
                                child: CircularProgressIndicator(),
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 20,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text("¿No estas registrado?"),
                            
                            FlatButton(
                              textColor: Theme.of(context).primaryColor,
                              child: Text('Registrarse'),
                              onPressed:(){
                               _showRegister(context);
                              }, 
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _login(BuildContext context) {
    if(!_loading){
      setState(() {
        _loading = true;
      });
    }
  }

  void _showRegister(BuildContext context) {
     Navigator.push(context, MaterialPageRoute(builder: (context)=>Registro()));
  }
}
