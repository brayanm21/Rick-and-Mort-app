import 'package:flutter/material.dart';
import 'package:share/share.dart';
import 'package:image_picker/image_picker.dart';


void main() {
  runApp(Routes());
}

class Routes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ejemplo',
      // MaterialApp contains our top-level Navigator
      initialRoute: '/Login',
      routes: {
        '/Login': (BuildContext context) => Login(),
        '/Register': (BuildContext context) => Register(),
        '/Paisajes': (BuildContext context) => Home(),
        //'/Nuevo': (BuildContext context) => Nuevo(),
      },
    );
  }
}

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        //theme: new ThemeData(scaffoldBackgroundColor: const Color.fromRGBO(35, 40, 47, 0)),
        title: "login",
        home: Scaffold(
            appBar: AppBar(
              toolbarHeight: 300,
              flexibleSpace: Container(
                color: Color(0xff3a4767),
                child: Column(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 150,
                        ),
                        Image.network(
                          "https://help.redbubble.com/hc/article_attachments/360002309526/Rick_and_Morty_-_logo__English_.png",
                          width: 300,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            body: ListView(children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(), labelText: 'Username'),
                      keyboardType: TextInputType.emailAddress,
                      style: TextStyle(fontSize: 16.0, color: Colors.black),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(), labelText: 'Password'),
                      keyboardType: TextInputType.visiblePassword,
                      style: TextStyle(fontSize: 16.0, color: Colors.black),
                    ),
                  ),
                  Text(
                    "Forgot Password ?",
                    style: TextStyle(fontSize: 10, color: Colors.grey),
                    textAlign: TextAlign.end,
                  ),
                  OutlineButton(
                    child: Text(
                      "Login",
                      style: TextStyle(
                        fontSize: 25.0,
                      ),
                    ),
                    highlightedBorderColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Home()),
                      );
                    },
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "don´t have an account?",
                          style: TextStyle(fontSize: 15, color: Colors.black),
                          textAlign: TextAlign.end,
                        ),
                        FlatButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Register()),
                              );
                            },
                            child: Text("Register",
                                style: TextStyle(color: Colors.blue))),
                      ])
                ],
              )
            ])));
  }
}

class Register extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        //theme: new ThemeData(scaffoldBackgroundColor: const Color.fromRGBO(35, 40, 47, 0)),
        title: "Register",
        home: Scaffold(
            appBar: AppBar(
              toolbarHeight: 300,
              flexibleSpace: Container(
                color: Color(0xff3a4767),
                child: Column(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 150,
                        ),
                        Image.network(
                          "https://help.redbubble.com/hc/article_attachments/360002309526/Rick_and_Morty_-_logo__English_.png",
                          width: 300,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            body: ListView(children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(), labelText: 'Username'),
                      keyboardType: TextInputType.emailAddress,
                      style: TextStyle(fontSize: 16.0, color: Colors.black),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(), labelText: 'Password'),
                      keyboardType: TextInputType.visiblePassword,
                      style: TextStyle(fontSize: 16.0, color: Colors.black),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Numero telefonico'),
                      keyboardType: TextInputType.number,
                      style: TextStyle(fontSize: 16.0, color: Colors.black),
                    ),
                  ),
                  OutlineButton(
                    child: Text(
                      "Register",
                      style: TextStyle(
                        fontSize: 25.0,
                      ),
                    ),
                    highlightedBorderColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Home()),
                      );
                    },
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        FlatButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Login()),
                              );
                            },
                            child: Text("Login",
                                style: TextStyle(color: Colors.blue)))
                      ])
                ],
              )
            ])));
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: new ThemeData(scaffoldBackgroundColor: const Color.fromRGBO(35, 40, 47, 0)),
        title: "Home",
        home: Scaffold(
          appBar: AppBar(
              toolbarHeight: 100,
              flexibleSpace: Container(
                color: Color(0xff3a4767),
                child: Column(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 15,
                        ),
                        Image.network(
                          "https://help.redbubble.com/hc/article_attachments/360002309526/Rick_and_Morty_-_logo__English_.png",
                          width: 300,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          body: ListView(children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              
              children: <Widget>[
                Image.network(
                          "https://www.adhesivosnatos.com/wp-content/uploads/2018/08/pegatina-ricky-y-morti-portal.png",
                          width: 300,
                        ),
                        Text("Bienvenido a la api de Rick And Morty",textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 50,color: Colors.white,)),
                        
              ],
            )
          ]),
          drawer: _getDrawer(context),
          floatingActionButton : FloatingActionButton(//boton flotante abajo derecha
          child: 
          Icon(Icons.upgrade),
          onPressed:  () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Update()),
        );
      } ,)
        ));
  }
}

class Personaje extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: new ThemeData(scaffoldBackgroundColor: const Color.fromRGBO(35, 40, 47, 0)),
        title: "Home",
        home: Scaffold(
          appBar: AppBar(
              toolbarHeight: 100,
              flexibleSpace: Container(
                color: Color(0xff3a4767),
                child: Column(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 15,
                        ),
                        Image.network(
                          "https://help.redbubble.com/hc/article_attachments/360002309526/Rick_and_Morty_-_logo__English_.png",
                          width: 300,
                        ),
                      ],
                    ),
                    
                  ],
                ),
              ),
            ),
          body: ListView(children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              
              children: <Widget>[
                Container(
                    width: 300.0,
                    height: 300.0,
                    decoration: new BoxDecoration(
                        shape: BoxShape.circle,
                        image: new DecorationImage(
                            fit: BoxFit.fill,
                            image: new NetworkImage(
                                "https://i.pinimg.com/originals/ac/51/52/ac5152b9f7f50781b2b01e35463fc4e6.jpg")
                        )
                    )),
                    Text("Rick Sanchez",textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 25,color: Colors.white,)),
                    Text("Morty y otros miembros de la familia sugieren que se considera a sí mismo totalmente superior a ellos, aunque en varios casos a lo largo de la serie muestra un lado más solitario. Frecuentemente eructa-habla palabras en medio de una oración mientras habla, presumiblemente como resultado de su alcoholismo. Se le identifica como Rick Sanchez de la Dimensión de la Tierra C-137. ",textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 15,color: Colors.white,)),
                        ElevatedButton.icon(
                onPressed: _shareContent,
                icon: Icon(Icons.share),
                label: Text('Compartir este personaje'))
              ],
            )
          ]),
          drawer: _getDrawer(context),
          floatingActionButton : FloatingActionButton(//boton flotante abajo derecha
          child: 
          Icon(Icons.upgrade),
          onPressed:  () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Update()),
        );
      },)
        ));
  }
}
  void _shareContent() {
    Share.share("hola");
  }

class Update extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        //theme: new ThemeData(scaffoldBackgroundColor: const Color.fromRGBO(35, 40, 47, 0)),
        title: "Register",
        home: Scaffold(
            appBar: AppBar(
              toolbarHeight: 100,
              flexibleSpace: Container(
                color: Color(0xff3a4767),
                child: Column(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 15,
                        ),
                        Image.network(
                          "https://help.redbubble.com/hc/article_attachments/360002309526/Rick_and_Morty_-_logo__English_.png",
                          width: 300,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            body: ListView(children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 250.0,
                    height: 250.0,
                    decoration: new BoxDecoration(
                        shape: BoxShape.circle,
                        image: new DecorationImage(
                            fit: BoxFit.fill,
                            image: new NetworkImage(
                                "https://diariomadridista.okdiario.com/img/2021/05/10/cristiano-ronaldo-juventus-2-655x368.jpg")
                        )
                    )),
                    Text("Brayan stiven muñoz",textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 20,color: Colors.black,)),
                        FloatingActionButton(
                        //onPressed:  _showPicker(context),
                        tooltip: 'Pick Image',
                        child: Icon(Icons.add_a_photo),
                        ),  
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 16.0, vertical: 0),
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(), labelText: 'New password'),
                      keyboardType: TextInputType.emailAddress,
                      style: TextStyle(fontSize: 16.0, color: Colors.black),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 16.0, vertical: 0),
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(), labelText: 'Repeat password'),
                      keyboardType: TextInputType.visiblePassword,
                      style: TextStyle(fontSize: 16.0, color: Colors.black),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Description'),
                      keyboardType: TextInputType.text,
                      style: TextStyle(fontSize: 16.0, color: Colors.black),
                    ),
                  ),
                  OutlineButton(
                    child: Text(
                      "Update",
                      style: TextStyle(
                        fontSize: 25.0,
                      ),
                    ),
                    highlightedBorderColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Home()),
                      );
                    },
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        FlatButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Login()),
                              );
                            },
                            )
                      ])
                ],
              )
            ]
            ),
            drawer: _getDrawer(context),
            )
            );
  }
}

 _showPicker(context) {
  showModalBottomSheet(
      context: context,
      builder: (BuildContext bc) {
        return SafeArea(
          child: Container(
            child: new Wrap(
              children: <Widget>[
                new ListTile(
                    leading: new Icon(Icons.photo_library),
                    title: new Text('Photo Library'),
                    onTap: () {
                      Navigator.of(context).pop();
                    }),
                new ListTile(
                  leading: new Icon(Icons.photo_camera),
                  title: new Text('Camera'),
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            ),
          ),
        );
      }
    );
}

Widget _getDrawer(BuildContext context) {
  return Drawer(
      child: ListView(children: <Widget>[
    DrawerHeader(
      decoration: BoxDecoration(color: Color(0xff3a4767)),
      child:
       Column(
         mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
         Container(
                    width: 100.0,
                    height: 100.0,
                    decoration: new BoxDecoration(
                        shape: BoxShape.circle,
                        image: new DecorationImage(
                            fit: BoxFit.fill,
                            image: new NetworkImage(
                                "https://diariomadridista.okdiario.com/img/2021/05/10/cristiano-ronaldo-juventus-2-655x368.jpg")
                        )
                    )),

          
          Text("Brayan stiven muñoz",textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 20,color: Colors.white,)),
        ],
      ),
    ),
    ListTile(
      title: Text("Home"),
      leading: Icon(Icons.home),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Home()),
        );
      },
    ),
    ListTile(
      title: Text("Rick Sánchez"),
      leading: Icon(Icons.verified_user),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Personaje()),
        );
      },
    ),
    ListTile(
      title: Text("Morty Smith"),
      leading: Icon(Icons.verified_user),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Personaje()),
        );
      },
    ),
    ListTile(
      title: Text("Beth Smith"),
      leading: Icon(Icons.verified_user),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Personaje()),
        );
      },
    ),
    ListTile(
      title: Text("Jerry Smith"),
      leading: Icon(Icons.verified_user),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Personaje()),
        );
      },
    ),
    ListTile(
      title: Text("Summer Smith"),
      leading: Icon(Icons.verified_user),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Personaje()),
        );
      },
    ),
    ListTile(
      title: Text("Cerrar Sesion"),
      leading: Icon(Icons.exit_to_app),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Login()),
        );
      },
    ),
  ]));
}
