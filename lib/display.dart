
import 'package:flutter/material.dart';

class FirstTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color:Colors.blue[900],
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[

                Expanded(
                  flex: 1,
                  child: Container(
                    margin: EdgeInsets.all(10.0),
                    height: MediaQuery.of(context).size.height * 0.235,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.red[500],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.asset('images/male.png',height: 100.0,width: 100.0,),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text('teplota je 26 C',style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,fontSize: 30.0))
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[

                Expanded(
                  flex: 1,
                  child: Container(
                    margin: EdgeInsets.all(10.0),
                    height: MediaQuery.of(context).size.height * 0.235,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.white
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image(image:AssetImage('image/icons8-water-100.png')),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text('tlak je 60 %',style: TextStyle(color: Colors.lightBlueAccent[200], fontWeight: FontWeight.bold,fontSize: 30.0))
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[

                Expanded(
                  flex: 1,
                  child: Container(
                    margin: EdgeInsets.all(10.0),
                    height: MediaQuery.of(context).size.height * 0.235,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.lightBlueAccent[200],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.asset('images/male.png',height: 100.0,width: 100.0,),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text('vhlkost je 60 %',style: TextStyle(color: Colors.red[500], fontWeight: FontWeight.bold,fontSize: 30.0))                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        )
    );
  }
}