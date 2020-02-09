import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Mo3enHome()
));

class Mo3enHome extends StatelessWidget {
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
              Flexible (
                    flex: 1,
                    child : AspectRatio (
                        aspectRatio: 3/2,
                        child : Container (
                          margin: EdgeInsets.all(10.0),
                          child: Image(image : AssetImage ('assets/doctor.jpg'),) ,
                        )
                    ),
                  ),

              Row (
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                    Flexible (
                      flex: 2,
                      child : AspectRatio (
                        aspectRatio: 2/2,
                        child : Container (
                          child: Image(image : AssetImage ('assets/learn.jpg'),) ,
                        )
                    ),
                  ),
                  Flexible (
                    flex: 3,
                    child : AspectRatio (
                        aspectRatio: 2/2,
                        child : Container (
                          child: Image(image : AssetImage ('assets/technology.jpg'),) ,
                        )
                    ),
                  ),
                ],
              ),
            ],
      ),


    );
  }

}