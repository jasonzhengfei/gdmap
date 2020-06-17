import 'dart:async';
import 'dart:io';

import 'package:amap_map_fluttify/src/android/platformview/AMapNaviView.dart';
import 'package:amap_map_fluttify/src/facade/amap_navi_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

typedef Future<void> _OnNaviViewCreated(AmapNaviController controller);

/// 高德导航 Widget
class AmapNaviView extends StatefulWidget {
  const AmapNaviView({
    Key key,
    this.onNaviViewCreated,
  }) : super(key: key);

  final _OnNaviViewCreated onNaviViewCreated;

  @override
  _AmapNaviViewState createState() => _AmapNaviViewState();
}

class _AmapNaviViewState extends State<AmapNaviView> {
  @override
  Widget build(BuildContext context) {
    if (Platform.isAndroid) {
      return AMapNaviView_Android(
        onViewCreated: (int id) {
          if (widget.onNaviViewCreated != null) {
            widget.onNaviViewCreated(AmapNaviController.android(id));
          }
        },
      );
    } else if (Platform.isIOS) {
      return Center(child: Text('未实现的平台'));
    } else {
      return Center(child: Text('未实现的平台'));
    }
  }
}
