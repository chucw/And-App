import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
//    const MyApp({super.key});

  // This widget is the root of your application.
  @override
  State<StatefulWidget> createState() {
    return _MyApp();
  }
}

  class _MyApp extends State<MyApp> {
    var switchValue = false;
    String test = 'hello';
    Color _color= Colors.blue;

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
        visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
      darkTheme: ThemeData.light(),
        home: Scaffold(
            body: Center(
                child: ElevatedButton(
                  child: Text('$test'),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(_color)
                  ),
                  onPressed: () {
                    if (_color == Colors.blue) {
                      setState(() {
                        test = 'flutter';
                        _color = Colors.amber;
                      });
                    } else {
                      setState(() {
                        test = 'flutter';
                        _color = Colors.blue;
                      });
                    }
                  }
                    ),
                  ),
                )
            );
    }
}