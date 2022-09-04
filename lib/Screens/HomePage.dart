import 'package:app_maromba/Screens/LoginForm.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomePage'),
      ),
      body: Stack(
        children: <Widget>[
          SafeArea(
              child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: <Widget>[
                Container(
                  height: 64,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      CircleAvatar(
                          radius: 32,
                          backgroundImage: NetworkImage(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRgLZal2ngrRXdEebFSXKENv_Joj38zpGXhwA&usqp=CAU')),
                      SizedBox(
                        width: 16,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('Seja bem vindo Pedro'),
                          FlatButton(
                              textColor: Colors.purple,
                              child: Text('Acessar Perfil!'),
                              onPressed: () {}),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          )),
          Container(
            padding: EdgeInsets.all(35),
            child: GridView.count(
              crossAxisCount: 2,
              children: <Widget>[
                MyMenu(
                  title: "Perfil",
                  icon: Icons.person,
                  warna: Colors.purple,
                ),
                MyMenu(
                  title: "Treinos",
                  icon: Icons.center_focus_strong,
                  warna: Colors.purple,
                ),
                MyMenu(
                  title: "Dieta",
                  icon: Icons.no_food,
                  warna: Colors.purple,
                ),
                MyMenu(
                  title: "Avaliação fisica",
                  icon: Icons.graphic_eq,
                  warna: Colors.purple,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MyMenu extends StatelessWidget {
  MyMenu({required this.title, required this.icon, required this.warna});

  final String title;
  final IconData icon;
  final MaterialColor warna;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => LoginForm()));
          // Navigator.push(context,
          //     MaterialPageRoute(builder: (_) => LoginForm())),
        },
        splashColor: Colors.purple,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Icon(
                icon,
                size: 70,
                color: warna,
              ),
              Text(
                title,
                style: new TextStyle(fontSize: 17),
              )
            ],
          ),
        ),
      ),
    );
  }
}
