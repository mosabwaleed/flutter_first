import 'package:flutter/material.dart';
import 'package:flutter_first/ScreenArguments.dart';

class SubSections extends StatefulWidget {
  static const routeName = '/sub';

  @override
  _SubSectionsState createState() => _SubSectionsState ();
}
class _SubSectionsState extends State<SubSections> {
    String name ;
  _SubSectionsState ({this.name});
  @override
  Widget build(BuildContext context) {
    ScreenArguments args = ModalRoute.of(context).settings.arguments;
    if (args.title.isNotEmpty && args.title.contains("midicine")) {
      return Scaffold(
        body: SingleChildScrollView(
          child: SafeArea (
            child : Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Card(
                  margin: EdgeInsets.fromLTRB(10.0, 5.0, 0.0, 0.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      FlatButton(onPressed: null,
                          padding: EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 0.0),
                          child: Image(image: AssetImage(
                              'assets/subassets/General-Medicine.jpg'),
                            height: 350,)),
                      Text(
                        'نهتم بهذا التخصص في  رفع الوعي الصحي وإجراءات الوقاية الصحية لدى الأفراد',
                        textAlign: TextAlign.center,)
                    ],),
                ),
                Card(
                  margin: EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      FlatButton(onPressed: null,
                          padding: EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 0.0),
                          child: Image(
                            image: AssetImage('assets/subassets/first.jpg'),
                            height: 350,)),
                      Text(
                        'نقوم من خلال هذا القسم بتقديم المُساعدة المبدئية التي تُقدّم للإنسان المُصاب بمرض أو حادث مُفاجئ، من أجل الحِفاظ على حياة المُصاب ومنع حدوث أي مُضاعفات إلى أن يصل الفريق الطبي المُختص',
                        textAlign: TextAlign.center,)
                  ],),
              ),
            ],
          ),
          )
        ),
      );
    }
    else if (args.title.isNotEmpty && args.title.contains("learn")) {
      return Scaffold(
        body: SingleChildScrollView(
            child: SafeArea (
              child : Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Card(
                    margin: EdgeInsets.fromLTRB(10.0, 5.0, 0.0, 0.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        FlatButton(onPressed: null,
                            padding: EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 0.0),
                            child: Image(image: AssetImage(
                                'assets/subassets/psychological-guidance.jpg'),
                              height: 350,)),
                        Text(
                          'نهتم في هذا التخصص بتوضيح أهم النقاط والحيثيات التي تضمن على الطلبة الفهم الكامل للصعوبات والضغوطات التي تواجههم اثناء سنواتهم الجامعية وكيفية التعامل معها .',
                          textAlign: TextAlign.center,)
                      ],),
                  ),
                  Card(
                    margin: EdgeInsets.all(10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        FlatButton(onPressed: null,
                            padding: EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 0.0),
                            child: Image(
                              image: AssetImage('assets/subassets/socondry.jpg'),
                              height: 350,)),
                        Text(
                          'نهتم في هذا التخصص الى تقديم الدعم الكلي والارشادات المتخصصة لطلبة الثانوية العامة والتي تضمن لهم تحقيق أفضل تحصيل ممكن خلال هذة السنة .',
                          textAlign: TextAlign.center,)
                      ],),
                  ),
                ],
              ),
            )
        ),
      );
    }
    else {
      return Scaffold (
          body : Container(width: 0.0, height: 0.0)
    );
    }
  }

}