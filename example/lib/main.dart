import 'package:flutter/material.dart';
import 'package:open_settings/open_settings.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Open Setting',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new RaisedButton(
              onPressed: () {
                OpenSettings.openWIFISetting();
              },
              child: new Center(
                child: new Text('Wi-fi'),
              ),
            ),
            new SizedBox(
              height: 15,
            ),
            new RaisedButton(
              onPressed: () {
                OpenSettings.openMobileDataSetting();
              },
              child: new Center(
                child: new Text('Mobile Data'),
              ),
            ),
            new SizedBox(
              height: 15,
            ),
            new RaisedButton(
              onPressed: () {
                OpenSettings.openNotificationSetting();
              },
              child: new Center(
                child: new Text('Notification'),
              ),
            ),
            new SizedBox(
              height: 15,
            ),
            new RaisedButton(
              onPressed: () {
                OpenSettings.openBluetoothSetting();
              },
              child: new Center(
                child: new Text('Bluetooth'),
              ),
            ),
            new SizedBox(
              height: 15,
            ),
            new RaisedButton(
              onPressed: () {
                OpenSettings.openAppSetting();
              },
              child: new Center(
                child: new Text('App Setting'),
              ),
            ),
            new SizedBox(
              height: 15,
            ),
            new RaisedButton(
              onPressed: () {
                OpenSettings.openLocationSetting();
              },
              child: new Center(
                child: new Text('Location'),
              ),
            ),
            new SizedBox(
              height: 15,
            ),
            new RaisedButton(
              onPressed: () {
                OpenSettings.openDisplaySetting();
              },
              child: new Center(
                child: new Text('Security'),
              ),
            ),
            new SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}
