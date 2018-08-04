import 'package:flutter/material.dart';
import 'package:flutter_build_env/config.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var config = ConfigWrapper.of(context);
    return new MaterialApp(
      title: 'Flutter Build Env',
      theme: new ThemeData(
        primarySwatch: config.production ? Colors.green : Colors.yellow,
      ),
      home: new MyHomePage(title: 'Flutter Build Env - ${config.env}'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    var apiKey = ConfigWrapper.of(context).apiKey;
    return new Scaffold(
        appBar: new AppBar(
          title: new Text(this.title),
        ),
        body: new Center(
            child: new Text('API Key : $apiKey')));
  }
}
