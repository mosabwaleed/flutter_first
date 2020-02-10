import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Mo3enHome(),
  debugShowCheckedModeBanner: false,
));

class Mo3enHome extends StatefulWidget {
  @override
  _Mo3enHomeState createState() => _Mo3enHomeState();
}

class _Mo3enHomeState extends State<Mo3enHome> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold (
      appBar: AppBar(
        title: Text("مشروع معين للاستشارات"),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Column (
            children: <Widget>[
              SizedBox (height: 10.0,),
              Flexible (
                    flex: 1,
                    child : FlatButton(
                      onPressed: null,
                        child: Image(image : AssetImage ('assets/doctor.jpg'),width: 700,),
                    ),
                  ),
              SizedBox (
                height: 5.0,
              ),
              Row (
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  SizedBox (
                    width:10,
                  ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Flexible (
                          child : FlatButton(
                            onPressed: null,
                            padding: EdgeInsets.fromLTRB(0.0, 5.0, 5.0, 0.0),
                              child: Image(image : AssetImage ('assets/learn.jpg'), width: 180,),
                          ),
                  ),
                            Flexible (
                              child : FlatButton(
                                padding: EdgeInsets.fromLTRB(0.0, 5.0, 5.0, 0.0),
                                child: Image(image : AssetImage ('assets/enterr.jpg'),width: 180,) ,
                                onPressed: null,
                              ),
                            ),


                      ],
                    ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Flexible (
                            child : FlatButton(
                              padding: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 5.0),
                              child: Image(image : AssetImage ('assets/technology.jpg'),width: 200,) ,
                              onPressed: null,
                        ),
                      ),
                      Flexible (
                        child : FlatButton(
                          padding: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 0.0),
                          child: Image(image : AssetImage ('assets/social.jpg'),width: 200,) ,
                          onPressed: null,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
      ),


    );
  }
}