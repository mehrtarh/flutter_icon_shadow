import 'package:flutter/material.dart';
import 'package:icon_shadow/icon_shadow.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {


  @override
  Widget build(BuildContext context) {




    return Scaffold(
      backgroundColor: Colors.black54,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Tab Bar Animation"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                IconShadowWidget(Icon(Icons.lightbulb_outline,
                    color: Colors.lightBlueAccent, size: 36)),
                IconShadowWidget(Icon(Icons.lightbulb_outline,
                    color: Colors.lightBlueAccent, size: 36),shadowColor: Colors.lightBlueAccent.shade100,),
                IconShadowWidget(Icon(Icons.lightbulb_outline,
                    color: Colors.lightBlueAccent, size: 36),showShadow: false,)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                IconShadowWidget(Icon(Icons.home,
                    color: Colors.green.shade900, size: 36),shadowColor: Colors.yellowAccent,),
                IconShadowWidget(Icon(Icons.home,
                    color: Colors.green.shade900, size: 36)),
                IconShadowWidget(Icon(Icons.home,
                    color: Colors.green.shade900, size: 36),showShadow: false,)
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                IconShadowWidget(Icon(Icons.access_alarm,
                    color: Colors.black54, size: 36),shadowColor: Colors.yellowAccent.shade400,),
                IconShadowWidget(Icon(Icons.access_alarm,
                    color: Colors.black54, size: 36),shadowColor: Colors.red.shade400,),
                IconShadowWidget(Icon(Icons.access_alarm,
                    color: Colors.black54, size: 36),shadowColor: Colors.cyanAccent.shade400,)
              ],
            ),

          ],
        ),
      ),
    );
  }
}
