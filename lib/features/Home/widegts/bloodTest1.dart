import 'package:flutter/material.dart';


import '../cbc_disease/presentianon/views/CBC.dart';
import '../kidney_disease/presention/views/kidney.dart';

class bloodTest1 extends StatelessWidget {
  const bloodTest1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: BackButton(),
          centerTitle: true,
          title: Text('Settings'),
          backgroundColor: Colors.blue[700],
        ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
          ),
          ListTile(
            title: Text('CBC values',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold),
            ),
            textColor: Colors.black87,
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (cntext)=> bloodtest()),);
        },
          ),
    ListTile(
    title: Text('Kidney values',
    style: TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.bold),
    ),
    textColor: Colors.black87,
    trailing: Icon(Icons.arrow_forward_ios),
    onTap: (){
    Navigator.push(context, MaterialPageRoute(builder:(context)=> kidney()),);
    },

    )],
      ),


    );

  }
}
