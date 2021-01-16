import 'package:flutter/material.dart';
import 'package:temp_appv5/main_menu.dart';
import 'package:temp_appv5/values/colors.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      body: Center(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: secondaryColor,
          ),
          child: Column(
            children: <Widget>[
              SizedBox(height: 100.0,),
              Image.asset('assets/images/upgrade.png', scale: 1,),
              SizedBox(height: 10.0,),
              Text('AGRICULTURE APP', style: TextStyle(
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
                color: highlightFontColor,
                shadows: <Shadow>[
                  Shadow(
                    color: shadowColor,
                    offset: Offset(0, 4),
                    blurRadius: 10.0,
                  ),
                ],
              ),),
              SizedBox(height: 1.0,),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 4.0),
                child: Material(  //Wrap with Material
                  shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(22.0) ),
                  elevation: 18.0,
                  color: shadeColor,
                  clipBehavior: Clip.antiAlias, // Add This
                  child: MaterialButton(
                    minWidth: 200.0,
                    height: 35,
                    color: highlightFontColor,
                    child: new Text('AGRICULTURE',
                        style: new TextStyle(fontSize: 16.0, color: Colors.white)),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>MainMenu()));
                    },
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 6.0),
                child: Material(  //Wrap with Material
                  shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(22.0) ),
                  elevation: 18.0,
                  color: shadeColor,
                  clipBehavior: Clip.antiAlias, // Add This
                  child: MaterialButton(
                    minWidth: 200.0,
                    height: 35,
                    color: Colors.white,
                    child: new Text('VISIT OFFICIAL SITE',
                        style: new TextStyle(fontSize: 16.0, color: highlightFontColor)),
                    onPressed: () {

                    },
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Text("Follow us on", style: TextStyle(
                color: Colors.white,
                fontSize: 15.0,
              ),),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  IconButton(
                      icon: Icon(Icons.tag_faces),
                      alignment: Alignment.center,
                      hoverColor: primaryFontColor,
                      color: Colors.white,
                      onPressed: (){}
                  ),
                  IconButton(
                      icon: Icon(Icons.tag_faces),
                      alignment: Alignment.center,
                      hoverColor: primaryFontColor,
                      color: Colors.white,
                      onPressed: (){}
                  ),
                  IconButton(
                      icon: Icon(Icons.tag_faces),
                      alignment: Alignment.center,
                      hoverColor: primaryFontColor,
                      color: Colors.white,
                      onPressed: (){}
                  )
                ],
              ),
            ],
          ),
        ),
      ),

//      floatingActionButton: FloatingActionButton(
//        onPressed: _incrementCounter,
//        tooltip: 'Increment',
//        child: Icon(Icons.add),
//      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
