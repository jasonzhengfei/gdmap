import 'package:amap_map_fluttify/amap_map_fluttify.dart';
import 'package:flutter/material.dart';

class LaunchAmapScreen extends StatefulWidget {
  @override
  _LaunchAmapScreenState createState() => _LaunchAmapScreenState();
}

class _LaunchAmapScreenState extends State<LaunchAmapScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('调用高德地图')),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            AmapService.navigateDrive(
              to: LatLng(36.547901, 104.258354),
              inApp: true,
            );
          },
          child: Text('高德地图导航'),
        ),
      ),
    );
  }
}
