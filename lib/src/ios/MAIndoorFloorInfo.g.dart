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

class MAIndoorFloorInfo extends NSObject  {
  //region constants
  static const String name__ = 'MAIndoorFloorInfo';

  
  //endregion

  //region creators
  static Future<MAIndoorFloorInfo> create__() async {
    final int refId = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('ObjectFactory::createMAIndoorFloorInfo');
    final object = MAIndoorFloorInfo()..refId = refId..tag__ = 'amap_map_fluttify';
  
    kNativeObjectPool.add(object);
    return object;
  }
  
  static Future<List<MAIndoorFloorInfo>> create_batch__(int length) async {
    if (false) {
      return Future.error('all args must have same length!');
    }
    final List resultBatch = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod('ObjectFactory::create_batchMAIndoorFloorInfo', {'length': length});
  
    final List<MAIndoorFloorInfo> typedResult = resultBatch.map((result) => MAIndoorFloorInfo()..refId = result..tag__ = 'amap_map_fluttify').toList();
    kNativeObjectPool.addAll(typedResult);
    return typedResult;
  }
  
  //endregion

  //region getters
  Future<String> get_floorName() async {
    final __result__ = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("MAIndoorFloorInfo::get_floorName", {'refId': refId});
  
    return __result__;
  }
  
  Future<int> get_floorIndex() async {
    final __result__ = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("MAIndoorFloorInfo::get_floorIndex", {'refId': refId});
  
    return __result__;
  }
  
  Future<String> get_floorNona() async {
    final __result__ = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("MAIndoorFloorInfo::get_floorNona", {'refId': refId});
  
    return __result__;
  }
  
  Future<bool> get_isPark() async {
    final __result__ = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("MAIndoorFloorInfo::get_isPark", {'refId': refId});
  
    return __result__;
  }
  
  //endregion

  //region setters
  
  //endregion

  //region methods
  
  //endregion
}

extension MAIndoorFloorInfo_Batch on List<MAIndoorFloorInfo> {
  //region getters
  Future<List<String>> get_floorName_batch() async {
    final resultBatch = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("MAIndoorFloorInfo::get_floorName_batch", [for (final __item__ in this) {'refId': __item__.refId}]);
    final typedResult = (resultBatch as List).cast<String>().map((__result__) => __result__).toList();
  
    return typedResult;
  }
  
  Future<List<int>> get_floorIndex_batch() async {
    final resultBatch = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("MAIndoorFloorInfo::get_floorIndex_batch", [for (final __item__ in this) {'refId': __item__.refId}]);
    final typedResult = (resultBatch as List).cast<int>().map((__result__) => __result__).toList();
  
    return typedResult;
  }
  
  Future<List<String>> get_floorNona_batch() async {
    final resultBatch = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("MAIndoorFloorInfo::get_floorNona_batch", [for (final __item__ in this) {'refId': __item__.refId}]);
    final typedResult = (resultBatch as List).cast<String>().map((__result__) => __result__).toList();
  
    return typedResult;
  }
  
  Future<List<bool>> get_isPark_batch() async {
    final resultBatch = await MethodChannel('me.yohom/amap_map_fluttify').invokeMethod("MAIndoorFloorInfo::get_isPark_batch", [for (final __item__ in this) {'refId': __item__.refId}]);
    final typedResult = (resultBatch as List).cast<bool>().map((__result__) => __result__).toList();
  
    return typedResult;
  }
  
  //endregion

  //region setters
  
  //endregion

  //region methods
  
  //endregion
}