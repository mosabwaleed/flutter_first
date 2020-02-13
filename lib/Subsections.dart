import 'package:flutter/material.dart';

class SubSections extends StatefulWidget {

  @override
  _SubSectionsState createState() => _SubSectionsState ();
}
class _SubSectionsState extends State<SubSections> {
    String name ;
  _SubSectionsState ({this.name});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea (
        child: Column (
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Card(
              margin: EdgeInsets.fromLTRB(10.0,5.0,0.0,0.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  FlatButton(onPressed: null,
                      padding: EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 0.0),
                      child: Image (image : AssetImage ('assets/subassets/General-Medicine.jpg')  ,height: 350,)),
                      Text ('نهتم بهذا التخصص في  رفع الوعي الصحي وإجراءات الوقاية الصحية لدى الأفراد',textAlign: TextAlign.center,)
                     ],),
            ),
            Card(
              margin: EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[

                ],),
            ),
            Card(
              margin: EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                ],),
            ),
            Card(
              margin: EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                ],),
            ),
          ],
        ),
      ),
    );
  }

}