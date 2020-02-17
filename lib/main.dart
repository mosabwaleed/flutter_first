import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_first/Subsections.dart';
import 'package:flutter_first/ScreenArguments.dart';

void main() => runApp(MaterialApp(
  home: Mo3enHome(),
  routes: {
    '/sub': (context) => SubSections() ,
  },
  debugShowCheckedModeBanner: false,
));

class Mo3enHome extends StatefulWidget {
  static const routeName = '/main';
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
      body: SingleChildScrollView(
        child: Column (
           mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                SizedBox (height: 10.0,),
                Flexible (
                      flex: 1,
                      child : FlatButton(
                        onPressed :() {
                          Navigator.pushNamed(
                            context,
                            SubSections.routeName,
                            arguments: ScreenArguments(
                              'midicine'
                            ),
                          );
                        },
                          child: Image(image : AssetImage ('assets/doctor.jpg'),
                            width: 700,
                            ),
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
                              onPressed :() {
                                Navigator.pushNamed(
                                  context,
                                  SubSections.routeName,
                                  arguments: ScreenArguments(
                                      'learn'
                                  ),
                                );
                              },
                              padding: EdgeInsets.fromLTRB(0.0, 5.0, 5.0, 0.0),
                                child: Image(image : AssetImage ('assets/learn.jpg'), width: 180,),
                            ),
                    ),
                              Flexible (
                                child : FlatButton(
                                  padding: EdgeInsets.fromLTRB(0.0, 5.0, 5.0, 0.0),
                                  child: Image(image : AssetImage ('assets/enterr.jpg'),width: 180,) ,
                                  onPressed :() {
                                    Navigator.pushNamed(
                                      context,
                                      SubSections.routeName,
                                      arguments: ScreenArguments(
                                          'enterr'
                                      ),
                                    );
                                  },
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
                                onPressed :() {
                                  Navigator.pushNamed(
                                    context,
                                    SubSections.routeName,
                                    arguments: ScreenArguments(
                                        'technology'
                                    ),
                                  );
                                },
                          ),
                        ),
                        Flexible (
                          child : FlatButton(
                            padding: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 0.0),
                            child: Image(image : AssetImage ('assets/social.jpg'),width: 200,) ,
                            onPressed :() {
                              Navigator.pushNamed(
                                context,
                                SubSections.routeName,
                                arguments: ScreenArguments(
                                    'social'
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
        ),
      ),


    );
  }
}