  import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:m3allim/bottomNavigator.dart';
import 'package:m3allim/serviceProvider.dart';
import './Categories.dart';
import './designCard.dart';
import './test.dart';
  
import './crud.dart';
import 'Doha.dart';
  
  class MyApp extends StatelessWidget {
  Map<Categories, List<Categories>> c;

  MyApp(this.c);

  @override
  Widget build(BuildContext context) {
    final title = 'Categories';
    return MaterialApp(
        title: title,
        home: Scaffold(
            appBar:  AppBar(backgroundColor: Colors.white, actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            color: Colors.black,
            iconSize: 17.0,
            onPressed: () {},
          ),
          
        ],
            ),
            body: new Center(
              child: GridView.builder(
                  itemCount: c.keys.length,
                  gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  itemBuilder: (BuildContext context, int index) {
                    return new FlatButton(
                      child: new test(c.keys.toList(), index),
                      onPressed: () async {
                        if (c.keys.elementAt(index).cat) {
                          Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (context) => card(c[c.keys.elementAt(index)])));
                        }
                        else{
  var reem = serviceProvider('راس بيروت', 29, 3.0, [1,5,10], "xx", true, ["hello"], "الميكانيكي ابو محمد", 9, '70922772', 6, "blacksmiths/Blacksmiths", GeoPoint(33,33));
  var rami =  serviceProvider('حمرا', 29, 3.9, [6,5,9], "xx", true, ["hello"], "الميكانيكي ابو علي", 9, '71089778', 6, "blacksmiths/Blacksmiths", GeoPoint(33,33));
  var sundus = serviceProvider('مار الياس', 29, 4.0, [0,1,3], "xx", true, ["hello"], "الميكانيكي سمير", 9, '78765234', 6, "blacksmiths/Blacksmiths", GeoPoint(33,33));
  var nadeem =serviceProvider('حي السلم', 29, 2.0, [1,2,7], "xx", true, ["hello"], "الميكانيكي مازن", 9, '03123446', 6, "blacksmiths/Blacksmiths", GeoPoint(33,33));
  List<serviceProvider> prof = [reem,rami,sundus,nadeem];
                         // List<serviceProvider> list = await fb.getServicers('blacksmiths/Blacksmiths');
                          Navigator.push(
            context, MaterialPageRoute(builder: (context) => Myapp(prof)));
                          
                        }
                      },
                    );
                  }),
            ),
            bottomNavigationBar: bottomNavigator(),
            )

            );
  }
}