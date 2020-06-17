//////////////////////////////////////////////////////////
// GENERATED BY FLUTTIFY. DO NOT EDIT IT.
//////////////////////////////////////////////////////////

package me.yohom.amap_map_fluttify.sub_handler;

import android.os.Bundle;
import android.util.Log;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import androidx.annotation.NonNull;
import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.PluginRegistry.Registrar;
import io.flutter.plugin.platform.PlatformViewRegistry;

import me.yohom.amap_map_fluttify.AmapMapFluttifyPlugin.Handler;

import static me.yohom.foundation_fluttify.FoundationFluttifyPluginKt.getEnableLog;
import static me.yohom.foundation_fluttify.FoundationFluttifyPluginKt.getHEAP;

@SuppressWarnings("ALL")
public class SubHandler24 {
    public static Map<String, Handler> getSubHandler(BinaryMessenger messenger) {
        return new HashMap<String, Handler>() {{
            // factory
            put("ObjectFactory::create_batchcom_amap_api_trace_TraceOverlay__com_amap_api_maps_AMap__java_util_List_com_amap_api_maps_model_LatLng_", (__argsBatch__, __methodResult__) -> {
                List<Integer> __resultList__ = new ArrayList<>();
            
                int __length__ = 0;
                // when batch size is 0, dart side will put a map with key 'length' to indicate the length
                // of this batch
                if (__argsBatch__ instanceof Map) {
                    __length__ = (Integer) ((Map<String, Object>) __argsBatch__).get("length");
                }
                // or directly put the arg batch
                else if (__argsBatch__ instanceof List) {
                    __length__ = ((List<Map<String, Object>>) __argsBatch__).size();
                }
            
                for (int __i__ = 0; __i__ < __length__; __i__++) {
                    Map<String, Object> __args__ = new HashMap<>();
                    // only when arg batch is not empty, java side needs to parse args;
                    if (__argsBatch__ instanceof List) {
                        __args__ = ((List<Map<String, Object>>) __argsBatch__).get(__i__);
                    }
            
                    // args
                    // ref arg
                    com.amap.api.maps.AMap var1 = (com.amap.api.maps.AMap) getHEAP().get((int) ((Map<String, Object>) __args__).get("var1"));
                    // list arg
                    List<Integer> var2RefIdList = (List<Integer>) ((Map<String, Object>) __args__).get("var2");
                    java.util.List<com.amap.api.maps.model.LatLng> var2 = new ArrayList<>();
                    for (int refId : var2RefIdList) {
                        ((ArrayList<com.amap.api.maps.model.LatLng>) var2).add((com.amap.api.maps.model.LatLng) getHEAP().get(refId));
                    }
            
                    // create target object
                    com.amap.api.trace.TraceOverlay __obj__ = new com.amap.api.trace.TraceOverlay(var1, (ArrayList) var2);
                    getHEAP().put(System.identityHashCode(__obj__), __obj__);
            
                    // print current HEAP
                    if (getEnableLog()) {
                        Log.d("ObjectFactory", "HEAP: " + getHEAP());
                    }
            
                    __resultList__.add( System.identityHashCode(__obj__));
                }
            
                __methodResult__.success(__resultList__);
            });
            // factory
            put("ObjectFactory::create_batchcom_amap_api_trace_TraceOverlay__com_amap_api_maps_AMap", (__argsBatch__, __methodResult__) -> {
                List<Integer> __resultList__ = new ArrayList<>();
            
                int __length__ = 0;
                // when batch size is 0, dart side will put a map with key 'length' to indicate the length
                // of this batch
                if (__argsBatch__ instanceof Map) {
                    __length__ = (Integer) ((Map<String, Object>) __argsBatch__).get("length");
                }
                // or directly put the arg batch
                else if (__argsBatch__ instanceof List) {
                    __length__ = ((List<Map<String, Object>>) __argsBatch__).size();
                }
            
                for (int __i__ = 0; __i__ < __length__; __i__++) {
                    Map<String, Object> __args__ = new HashMap<>();
                    // only when arg batch is not empty, java side needs to parse args;
                    if (__argsBatch__ instanceof List) {
                        __args__ = ((List<Map<String, Object>>) __argsBatch__).get(__i__);
                    }
            
                    // args
                    // ref arg
                    com.amap.api.maps.AMap var1 = (com.amap.api.maps.AMap) getHEAP().get((int) ((Map<String, Object>) __args__).get("var1"));
            
                    // create target object
                    com.amap.api.trace.TraceOverlay __obj__ = new com.amap.api.trace.TraceOverlay(var1);
                    getHEAP().put(System.identityHashCode(__obj__), __obj__);
            
                    // print current HEAP
                    if (getEnableLog()) {
                        Log.d("ObjectFactory", "HEAP: " + getHEAP());
                    }
            
                    __resultList__.add(System.identityHashCode(__obj__));
                }
            
                __methodResult__.success(__resultList__);
            });
        }};
    }
}
