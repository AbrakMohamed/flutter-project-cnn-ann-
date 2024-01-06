import 'package:cnn_classification/loadimage.dart';
import 'package:cnn_classification/loadimage2.dart';
import 'package:cnn_classification/main.dart';
import 'package:cnn_classification/myhomepage.dart';
import 'package:flutter/material.dart';

class MenuBarre extends StatelessWidget {
  const MenuBarre({Key? key});


  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: ListView(
        children: [const DrawerHeader(decoration: BoxDecoration(gradient: LinearGradient(colors:[Colors.purple,Colors.blue])),
          child:CircleAvatar(backgroundImage: AssetImage('assets/ia.jpg')),
        ),
        Column(
          children: [
            ListTile(title: Text('Home'),leading: Icon(Icons.home),onTap: (){
              Navigator.push(context, MaterialPageRoute(builder:(context) => const MyApp(),));
            },),


            ExpansionTile(title: const Text('Documentation'),leading: const Icon(Icons.settings),
            children: [
              ListTile(title: Text('Ann'),leading: Icon(Icons.network_cell), onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const LoadImage2()));
              } ,),
              ListTile(title: Text('Cnn'),leading: Icon(Icons.network_ping_outlined), onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const LoadImage()));
              } ,)
            ],)
          ],
        )
        ],
      ),
    );
  }
}