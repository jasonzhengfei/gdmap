// ignore_for_file: non_constant_identifier_names, camel_case_types, missing_return, unused_import, unused_local_variable, dead_code, unnecessary_cast
//////////////////////////////////////////////////////////
// GENERATED BY FLUTTIFY. DO NOT EDIT IT.
//////////////////////////////////////////////////////////

import 'dart:typed_data';

import 'package:amap_map_fluttify/src/ios/ios.export.g.dart';
import 'package:amap_map_fluttify/src/android/android.export.g.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'package:foundation_fluttify/foundation_fluttify.dart';
import 'package:core_location_fluttify/core_location_fluttify.dart';

mixin com_autonavi_amap_mapcore_interfaces_IMarker on com_autonavi_amap_mapcore_interfaces_IOverlayImage {
  

  

  

  
  Future<void> setPeriod(int var1) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.autonavi.amap.mapcore.interfaces.IMarker@$refId::setPeriod([\'var1\':$var1])');
    }
  
    // invoke native method
    final __result__ = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.interfaces.IMarker::setPeriod', {"var1": var1, "refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (__result__ == null) {
      return null;
    } else {
      final __return__ = __result__;
    
      return __return__;
    }
  }
  
  
  Future<int> getPeriod() async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.autonavi.amap.mapcore.interfaces.IMarker@$refId::getPeriod([])');
    }
  
    // invoke native method
    final __result__ = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.interfaces.IMarker::getPeriod', {"refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (__result__ == null) {
      return null;
    } else {
      final __return__ = __result__;
    
      return __return__;
    }
  }
  
  
  Future<void> setIcons(List<com_amap_api_maps_model_BitmapDescriptor> var1) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.autonavi.amap.mapcore.interfaces.IMarker@$refId::setIcons([])');
    }
  
    // invoke native method
    final __result__ = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.interfaces.IMarker::setIcons', {"var1": var1.map((__it__) => __it__.refId).toList(), "refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (__result__ == null) {
      return null;
    } else {
      final __return__ = __result__;
    
      return __return__;
    }
  }
  
  
  Future<List<com_amap_api_maps_model_BitmapDescriptor>> getIcons() async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.autonavi.amap.mapcore.interfaces.IMarker@$refId::getIcons([])');
    }
  
    // invoke native method
    final __result__ = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.interfaces.IMarker::getIcons', {"refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (__result__ == null) {
      return null;
    } else {
      final __return__ = (__result__ as List).cast<int>().map((__it__) => com_amap_api_maps_model_BitmapDescriptor()..refId = __it__..tag__ = 'amap_map_fluttify').toList();
      kNativeObjectPool.addAll(__return__);
      return __return__;
    }
  }
  
  
  Future<void> set2Top() async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.autonavi.amap.mapcore.interfaces.IMarker@$refId::set2Top([])');
    }
  
    // invoke native method
    final __result__ = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.interfaces.IMarker::set2Top', {"refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (__result__ == null) {
      return null;
    } else {
      final __return__ = __result__;
    
      return __return__;
    }
  }
  
  
  Future<void> setFlat(bool var1) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.autonavi.amap.mapcore.interfaces.IMarker@$refId::setFlat([\'var1\':$var1])');
    }
  
    // invoke native method
    final __result__ = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.interfaces.IMarker::setFlat', {"var1": var1, "refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (__result__ == null) {
      return null;
    } else {
      final __return__ = __result__;
    
      return __return__;
    }
  }
  
  
  Future<bool> isFlat() async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.autonavi.amap.mapcore.interfaces.IMarker@$refId::isFlat([])');
    }
  
    // invoke native method
    final __result__ = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.interfaces.IMarker::isFlat', {"refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (__result__ == null) {
      return null;
    } else {
      final __return__ = __result__;
    
      return __return__;
    }
  }
  
  
  Future<void> setPerspective(bool var1) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.autonavi.amap.mapcore.interfaces.IMarker@$refId::setPerspective([\'var1\':$var1])');
    }
  
    // invoke native method
    final __result__ = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.interfaces.IMarker::setPerspective', {"var1": var1, "refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (__result__ == null) {
      return null;
    } else {
      final __return__ = __result__;
    
      return __return__;
    }
  }
  
  
  Future<bool> isPerspective() async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.autonavi.amap.mapcore.interfaces.IMarker@$refId::isPerspective([])');
    }
  
    // invoke native method
    final __result__ = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.interfaces.IMarker::isPerspective', {"refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (__result__ == null) {
      return null;
    } else {
      final __return__ = __result__;
    
      return __return__;
    }
  }
  
  
  Future<void> setTitle(String var1) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.autonavi.amap.mapcore.interfaces.IMarker@$refId::setTitle([\'var1\':$var1])');
    }
  
    // invoke native method
    final __result__ = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.interfaces.IMarker::setTitle', {"var1": var1, "refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (__result__ == null) {
      return null;
    } else {
      final __return__ = __result__;
    
      return __return__;
    }
  }
  
  
  Future<String> getTitle() async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.autonavi.amap.mapcore.interfaces.IMarker@$refId::getTitle([])');
    }
  
    // invoke native method
    final __result__ = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.interfaces.IMarker::getTitle', {"refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (__result__ == null) {
      return null;
    } else {
      final __return__ = __result__;
    
      return __return__;
    }
  }
  
  
  Future<void> setIcon(com_amap_api_maps_model_BitmapDescriptor var1) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.autonavi.amap.mapcore.interfaces.IMarker@$refId::setIcon([])');
    }
  
    // invoke native method
    final __result__ = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.interfaces.IMarker::setIcon', {"var1": var1.refId, "refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (__result__ == null) {
      return null;
    } else {
      final __return__ = __result__;
    
      return __return__;
    }
  }
  
  
  Future<void> setSnippet(String var1) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.autonavi.amap.mapcore.interfaces.IMarker@$refId::setSnippet([\'var1\':$var1])');
    }
  
    // invoke native method
    final __result__ = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.interfaces.IMarker::setSnippet', {"var1": var1, "refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (__result__ == null) {
      return null;
    } else {
      final __return__ = __result__;
    
      return __return__;
    }
  }
  
  
  Future<String> getSnippet() async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.autonavi.amap.mapcore.interfaces.IMarker@$refId::getSnippet([])');
    }
  
    // invoke native method
    final __result__ = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.interfaces.IMarker::getSnippet', {"refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (__result__ == null) {
      return null;
    } else {
      final __return__ = __result__;
    
      return __return__;
    }
  }
  
  
  Future<void> setDraggable(bool var1) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.autonavi.amap.mapcore.interfaces.IMarker@$refId::setDraggable([\'var1\':$var1])');
    }
  
    // invoke native method
    final __result__ = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.interfaces.IMarker::setDraggable', {"var1": var1, "refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (__result__ == null) {
      return null;
    } else {
      final __return__ = __result__;
    
      return __return__;
    }
  }
  
  
  Future<bool> isDraggable() async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.autonavi.amap.mapcore.interfaces.IMarker@$refId::isDraggable([])');
    }
  
    // invoke native method
    final __result__ = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.interfaces.IMarker::isDraggable', {"refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (__result__ == null) {
      return null;
    } else {
      final __return__ = __result__;
    
      return __return__;
    }
  }
  
  
  Future<bool> isRemoved() async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.autonavi.amap.mapcore.interfaces.IMarker@$refId::isRemoved([])');
    }
  
    // invoke native method
    final __result__ = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.interfaces.IMarker::isRemoved', {"refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (__result__ == null) {
      return null;
    } else {
      final __return__ = __result__;
    
      return __return__;
    }
  }
  
  
  Future<void> showInfoWindow() async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.autonavi.amap.mapcore.interfaces.IMarker@$refId::showInfoWindow([])');
    }
  
    // invoke native method
    final __result__ = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.interfaces.IMarker::showInfoWindow', {"refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (__result__ == null) {
      return null;
    } else {
      final __return__ = __result__;
    
      return __return__;
    }
  }
  
  
  Future<void> hideInfoWindow() async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.autonavi.amap.mapcore.interfaces.IMarker@$refId::hideInfoWindow([])');
    }
  
    // invoke native method
    final __result__ = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.interfaces.IMarker::hideInfoWindow', {"refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (__result__ == null) {
      return null;
    } else {
      final __return__ = __result__;
    
      return __return__;
    }
  }
  
  
  Future<bool> isInfoWindowShown() async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.autonavi.amap.mapcore.interfaces.IMarker@$refId::isInfoWindowShown([])');
    }
  
    // invoke native method
    final __result__ = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.interfaces.IMarker::isInfoWindowShown', {"refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (__result__ == null) {
      return null;
    } else {
      final __return__ = __result__;
    
      return __return__;
    }
  }
  
  
  Future<void> setGeoPoint(com_autonavi_amap_mapcore_IPoint var1) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.autonavi.amap.mapcore.interfaces.IMarker@$refId::setGeoPoint([])');
    }
  
    // invoke native method
    final __result__ = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.interfaces.IMarker::setGeoPoint', {"var1": var1.refId, "refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (__result__ == null) {
      return null;
    } else {
      final __return__ = __result__;
    
      return __return__;
    }
  }
  
  
  Future<com_autonavi_amap_mapcore_IPoint> getGeoPoint() async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.autonavi.amap.mapcore.interfaces.IMarker@$refId::getGeoPoint([])');
    }
  
    // invoke native method
    final __result__ = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.interfaces.IMarker::getGeoPoint', {"refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (__result__ == null) {
      return null;
    } else {
      final __return__ = com_autonavi_amap_mapcore_IPoint()..refId = __result__..tag__ = 'amap_map_fluttify';
      kNativeObjectPool.add(__return__);
      return __return__;
    }
  }
  
  
  Future<void> setPositionByPixels(int var1, int var2) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.autonavi.amap.mapcore.interfaces.IMarker@$refId::setPositionByPixels([\'var1\':$var1, \'var2\':$var2])');
    }
  
    // invoke native method
    final __result__ = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.interfaces.IMarker::setPositionByPixels', {"var1": var1, "var2": var2, "refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (__result__ == null) {
      return null;
    } else {
      final __return__ = __result__;
    
      return __return__;
    }
  }
  
  
  Future<void> setBelowMaskLayer(bool var1) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.autonavi.amap.mapcore.interfaces.IMarker@$refId::setBelowMaskLayer([\'var1\':$var1])');
    }
  
    // invoke native method
    final __result__ = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.interfaces.IMarker::setBelowMaskLayer', {"var1": var1, "refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (__result__ == null) {
      return null;
    } else {
      final __return__ = __result__;
    
      return __return__;
    }
  }
  
  
  Future<void> setAnimation(com_amap_api_maps_model_animation_Animation var1) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.autonavi.amap.mapcore.interfaces.IMarker@$refId::setAnimation([])');
    }
  
    // invoke native method
    final __result__ = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.interfaces.IMarker::setAnimation', {"var1": var1.refId, "refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (__result__ == null) {
      return null;
    } else {
      final __return__ = __result__;
    
      return __return__;
    }
  }
  
  
  Future<bool> startAnimation() async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.autonavi.amap.mapcore.interfaces.IMarker@$refId::startAnimation([])');
    }
  
    // invoke native method
    final __result__ = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.interfaces.IMarker::startAnimation', {"refId": refId});
  
  
    // handle native call
  
  
    // convert native result to dart side object
    if (__result__ == null) {
      return null;
    } else {
      final __return__ = __result__;
    
      return __return__;
    }
  }
  
  
  Future<void> setAnimationListener(com_amap_api_maps_model_animation_Animation_AnimationListener var1) async {
    // print log
    if (fluttifyLogEnabled) {
      debugPrint('fluttify-dart: com.autonavi.amap.mapcore.interfaces.IMarker@$refId::setAnimationListener([])');
    }
  
    // invoke native method
    final __result__ = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('com.autonavi.amap.mapcore.interfaces.IMarker::setAnimationListener', {"refId": refId});
  
  
    // handle native call
    MethodChannel('com.autonavi.amap.mapcore.interfaces.IMarker::setAnimationListener::Callback')
        .setMethodCallHandler((methodCall) async {
          final args = methodCall.arguments as Map;
          // final refId = args['callerRefId'] as int;
          // if (refId != this.refId) return;
  
          switch (methodCall.method) {
            case 'Callback::com.amap.api.maps.model.animation.Animation.AnimationListener::onAnimationStart':
              // print log
              if (fluttifyLogEnabled) {
                debugPrint('fluttify-dart-callback: onAnimationStart([])');
              }
        
              // handle the native call
              var1?.onAnimationStart();
              break;
            case 'Callback::com.amap.api.maps.model.animation.Animation.AnimationListener::onAnimationEnd':
              // print log
              if (fluttifyLogEnabled) {
                debugPrint('fluttify-dart-callback: onAnimationEnd([])');
              }
        
              // handle the native call
              var1?.onAnimationEnd();
              break;
            default:
              break;
          }
        });
  
    // convert native result to dart side object
    if (__result__ == null) {
      return null;
    } else {
      final __return__ = __result__;
    
      return __return__;
    }
  }
  
}