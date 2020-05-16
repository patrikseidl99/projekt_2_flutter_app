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
              .loadString('LoadJSON/data1.json'),
          builder: (context, snapshot){
           // inside
          var mydata= jsonDecode(snapshot.data.toString());
          return new ListView.builder(
            itemBuilder: (BuildContext context,int idex){
              return new Card(
                child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    new Text("Name"+mydata['sensor']),
                    new Text("Number"+mydata['sample']),
                    new Text("Battery"+mydata['batt']),
                    new Text("Vlhkost"+mydata['hum']),
                    new Text("press1"+mydata['press1']),
                    new Text("press2"+mydata['press2']),
                    new Text("Teplota1"+mydata['T1']),
                    new Text("Teplota2"+mydata['T2']),
                    new Text("Teplota3"+mydata['T3']),
                    new Text("Teplota4"+mydata['T4']),
                    new Text("Teplota5"+mydata['T5']),
                    new Text("Teplota6"+mydata['T6']),
                    new Text("Teplota7"+mydata['T7']),
                    new Text("Teplota8"+mydata['T8']),
                    new Text("Teplota9"+mydata['T9']),
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