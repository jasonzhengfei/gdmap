import 'package:amap_core_fluttify/amap_core_fluttify.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

class AmapNaviController {
  static const _channel = MethodChannel('me.yohom/amap_map_fluttify');

  /// Android构造器
  AmapNaviController.android(this._androidNaviViewId);

  /// iOS构造器
  AmapNaviController.ios(this._iosNaviViewId);

  int _androidNaviViewId;
  int _iosNaviViewId;

  Future<void> navigate({
    LatLng from,
    @required LatLng to,
    List<LatLng> passby = const [],
    int strategy,
  }) async {
    final args = {
      'context': (await android_app_Application.get()).refId,
      'fromLat': from?.latitude ?? 0,
      'fromLng': from?.longitude ?? 0,
      'toLat': to?.latitude ?? 0,
      'toLng': to?.longitude ?? 0,
      'passby': passby.map((it) => '${it.latitude},${it.longitude}').join(';'),
      'strategy': strategy,
    };
    _channel.invokeMethod('navigate', args);
  }
}
