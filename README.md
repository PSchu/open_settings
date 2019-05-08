# open_settings

[![pub package](version_image.svg)](https://pub.dartlang.org/packages/open_settings)

## A Flutter plugin for jumping to system settings. 

### For Android:<br/>
this plugin currently support jumping to WiFi, Mobile Data, Bluetooth ,Location, App Setting And Notification setting.<br/> 
Other setting path will be added soon.<br/>
<br/>

### For iOS:<br/>
this plugin only opens the app setting screen `Settings` application, as using url schemes to open inner setting path is a violation of Apple's regulations. 
Using url scheme to open settings can also leads to possible App Store rejection.
<br/>
<br/>
<br/>

#### If you can find any workaround or enhancement, pull requests are always welcome.
<br/>

## Usage

To use this plugin, add `open_settings` as a [dependency in your pubspec.yaml file](https://flutter.io/platform-plugins/).

For iOS, It will always go to app setting.

### Example

```dart
import 'package:flutter/material.dart';
import 'package:open_settings/open_settings.dart';

void main() => runApp(MaterialApp(
      home: Scaffold(
        body: Center(
          child: RaisedButton(
            onPressed: () {
                OpenSettings.openWIFISetting();
              },
            child: Text('Wi-fi Settings'),
          ),
        ),
      ),
    ));
```