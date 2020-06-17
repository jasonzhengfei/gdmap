import 'package:amap_map_fluttify/amap_map_fluttify.dart';
import 'package:decorated_flutter/decorated_flutter.dart';
import 'package:flutter/material.dart';

class NaviWidgetScreen extends StatefulWidget {
  @override
  _NaviWidgetScreenState createState() => _NaviWidgetScreenState();
}

class _NaviWidgetScreenState extends State<NaviWidgetScreen> {
  final from = LatLng(39.90741, 116.374016);
  final to = LatLng(39.908068, 116.411696);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('调用导航组件')),
      body: DecoratedColumn(
        children: <Widget>[
          Flexible(
            flex: 1,
            child: AmapNaviView(
              onNaviViewCreated: (controller) async {
                Future.delayed(Duration(seconds: 1), () => 1).then((e) {
                  controller.navigate(
                    from: LatLng(30.088845, 119.649506),
                    to: LatLng(29.088845, 119.649506),
                  );
                });
              },
            ),
          ),
          Flexible(
            child: DecoratedColumn(
              scrollable: true,
              divider: kDividerZero,
              children: <Widget>[],
            ),
          ),
        ],
      ),
    );
  }
}
