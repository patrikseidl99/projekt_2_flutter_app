import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';


class LoadTab extends StatelessWidget {
  List data;
  @override
  Widget build(BuildContext context) {
  return new Scaffold(
    appBar: new AppBar(
      title: new Text("load data"),
    ),
    body: new Container(
      child: new Center(
        child: new FutureBuilder(
          future:DefaultAssetBundle
              .of(context)
              .loadString('assets/data.json'),
          builder: (context, snapshot){
           // inside
          var mydata= jsonDecode(snapshot.data.toString());
          return new ListView.builder(
            itemBuilder: (BuildContext context, int index){
              return new Card(
                child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    new Text("Name"+mydata[index]['sensor']),
                    new Text("Number"+mydata[index]['sample']),
                    new Text("Battery"+mydata[index]['batt']),
                    new Text("Vlhkost"+mydata[index]['hum']),
                    new Text("Name"+mydata[index]['press1']),
                    new Text("Name"+mydata[index]['press2']),
                    new Text("Name"+mydata[index]['T1']),
                    new Text("Name"+mydata[index]['T2']),
                    new Text("Name"+mydata[index]['T3']),
                    new Text("Name"+mydata[index]['T4']),
                    new Text("Name"+mydata[index]['T5']),
                    new Text("Name"+mydata[index]['T6']),
                    new Text("Name"+mydata[index]['T9']),
                  ],
                ),
              );
            },
            itemCount: mydata== null ? 0:mydata.length,
          );
            },
        ),
      ),
    )
  );
  }
}