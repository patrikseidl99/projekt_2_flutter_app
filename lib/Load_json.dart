
import 'package:projekt2flutterapp/data.dart';
import 'package:flutter/material.dart';

class LoadTab extends StatelessWidget {
  Future<List<DataJson>> fetchData(BuildContext context) async{
    final jsonString = await DefaultAssetBundle.of(context).loadString(
        'LoadJSON/data1.json');
    return dataJsonFromJson(jsonString);
  }
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text("load data"),),
    body: Container(
        child: FutureBuilder(
          future: fetchData(context),
          builder:(context,snapshot){
            if(snapshot.hasData){
              return ListView.builder(
                itemCount:snapshot.data.length,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index){
                  DataJson data = snapshot.data[index];
                  return Padding(
                    padding: const EdgeInsets.all(10.0),
                  child: Card(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                    children :<Widget>[
                      Text(
                          data.sensor,style: TextStyle(fontSize: 50),
                      ),
                      Text(data.sample,style: TextStyle(fontSize: 20)),
                      Text(data.batt,style: TextStyle(fontSize: 20)),
                      Text(data.hum,style: TextStyle(fontSize: 20)),
                      Text(data.press1,style: TextStyle(fontSize: 20)),
                      Text(data.press2,style: TextStyle(fontSize: 20)),
                      Text(data.t1,style: TextStyle(fontSize: 20)),
                      Text(data.t2,style: TextStyle(fontSize: 20)), Text(data.t3,style: TextStyle(fontSize: 20)), Text(data.t4,style: TextStyle(fontSize: 20)), Text(data.t5,style: TextStyle(fontSize: 20)), Text(data.t6,style: TextStyle(fontSize: 20)),Text(data.t7,style: TextStyle(fontSize: 20)),Text(data.t8,style: TextStyle(fontSize: 20)),Text(data.t9,style: TextStyle(fontSize: 20)),
                  ],
                  ),
                  ),
                  );
                },
              );
            }
            return CircularProgressIndicator();
          },
        ),
    )
  );
  }
}