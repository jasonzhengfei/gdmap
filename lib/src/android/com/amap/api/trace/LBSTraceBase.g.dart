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

mixin com_amap_api_trace_LBSTraceBase on java_lang_Object {
  

  

  

  @mustCallSuper
  Future<void> queryProcessedTrace(int var1, List<com_amap_api_trace_TraceLocation> var2, int var3, com_amap_api_trace_TraceListener var4) {
    kNativeObjectPool.addAll(var2);
    kNativeObjectPool.add(var4);
  
    if (fluttifyLogEnabled) {
      debugPrint('queryProcessedTrace::kNativeObjectPool: $kNativeObjectPool');
    }
  }
  
  @mustCallSuper
  Future<void> setLocationInterval(int var1) {
  
  
    if (fluttifyLogEnabled) {
      debugPrint('setLocationInterval::kNativeObjectPool: $kNativeObjectPool');
    }
  }
  
  @mustCallSuper
  Future<void> setTraceStatusInterval(int var1) {
  
  
    if (fluttifyLogEnabled) {
      debugPrint('setTraceStatusInterval::kNativeObjectPool: $kNativeObjectPool');
    }
  }
  
  @mustCallSuper
  Future<void> startTrace(com_amap_api_trace_TraceStatusListener var1) {
    kNativeObjectPool.add(var1);
  
    if (fluttifyLogEnabled) {
      debugPrint('startTrace::kNativeObjectPool: $kNativeObjectPool');
    }
  }
  
  @mustCallSuper
  Future<void> stopTrace() {
  
  
    if (fluttifyLogEnabled) {
      debugPrint('stopTrace::kNativeObjectPool: $kNativeObjectPool');
    }
  }
  
  @mustCallSuper
  Future<void> destroy() {
  
  
    if (fluttifyLogEnabled) {
      debugPrint('destroy::kNativeObjectPool: $kNativeObjectPool');
    }
  }
  
}