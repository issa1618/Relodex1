import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import './Servicer.dart';
import './MenuButton.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import './DisplayCards.dart';
import 'youssef.dart';

import './bottomNavigator.dart';

class Myapp extends StatelessWidget {
  List<Servicer> lst;
   Myapp(this.lst);

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        home: new _Myapp(lst));
  }
}


class _Myapp extends StatelessWidget{
   List<Servicer> lst;
   _Myapp(this.lst);

   int h(){
      return 0;
   }

   @override
 Widget build(BuildContext context) {
    return  Scaffold(

        appBar: AppBar(backgroundColor: Colors.white, actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            color: Colors.black,
            iconSize: 17.0,
            onPressed: () {},
          ),
          
        ],
       
        ),
        

        //backgroundColor: Colors.white,
        body: ListView(children: [
          menubutton(lst, lst),
          ServiceDisplay(lst),
        ],
        ),
       bottomNavigationBar: bottomNavigator(),
        );
  }



}
