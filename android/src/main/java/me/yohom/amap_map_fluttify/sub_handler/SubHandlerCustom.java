//////////////////////////////////////////////////////////
// GENERATED BY FLUTTIFY. DO NOT EDIT IT.
//////////////////////////////////////////////////////////

package me.yohom.amap_map_fluttify.sub_handler;

import android.content.Context;
import android.util.Log;

import com.amap.api.maps.model.LatLng;
import com.amap.api.maps.model.Poi;
import com.amap.api.navi.AMapNavi;
import com.amap.api.navi.AMapNaviListener;
import com.amap.api.navi.AmapNaviPage;
import com.amap.api.navi.AmapNaviParams;
import com.amap.api.navi.AmapNaviType;
import com.amap.api.navi.enums.NaviType;
import com.amap.api.navi.model.AMapCalcRouteResult;
import com.amap.api.navi.model.AMapLaneInfo;
import com.amap.api.navi.model.AMapModelCross;
import com.amap.api.navi.model.AMapNaviCameraInfo;
import com.amap.api.navi.model.AMapNaviCross;
import com.amap.api.navi.model.AMapNaviInfo;
import com.amap.api.navi.model.AMapNaviLocation;
import com.amap.api.navi.model.AMapNaviRouteNotifyData;
import com.amap.api.navi.model.AMapNaviTrafficFacilityInfo;
import com.amap.api.navi.model.AMapServiceAreaInfo;
import com.amap.api.navi.model.AimLessModeCongestionInfo;
import com.amap.api.navi.model.AimLessModeStat;
import com.amap.api.navi.model.NaviInfo;
import com.amap.api.navi.model.NaviLatLng;
import com.autonavi.tbt.TrafficFacilityInfo;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import io.flutter.plugin.common.BinaryMessenger;
import me.yohom.amap_map_fluttify.AmapMapFluttifyPlugin.Handler;

import static me.yohom.foundation_fluttify.FoundationFluttifyPluginKt.getEnableLog;
import static me.yohom.foundation_fluttify.FoundationFluttifyPluginKt.getHEAP;

@SuppressWarnings("ALL")
public class SubHandlerCustom {
    private static final String TAG = "SubHandlerCustom";
    private static AMapNavi navi;

    public static Map<String, Handler> getSubHandler(BinaryMessenger messenger) {
        return new HashMap<String, Handler>() {{
            put("navigateComponent", (args, methodResult) -> {
                // args
                int contextRefId = (int) ((Map<String, Object>) args).get("context");
                double fromLat = (double) ((Map<String, Object>) args).get("fromLat");
                double fromLng = (double) ((Map<String, Object>) args).get("fromLng");
                double toLat = (double) ((Map<String, Object>) args).get("toLat");
                double toLng = (double) ((Map<String, Object>) args).get("toLng");

                // invoke native method
                try {
                    Context context = (Context) getHEAP().get(contextRefId);
                    Poi start = null;
                    Poi end = null;
                    if (fromLat != 0 && fromLng != 0) {
                        start = new Poi("", new LatLng(fromLat, fromLng), "");
                    }
                    if (toLat != 0 && toLng != 0) {
                        end = new Poi("", new LatLng(toLat, toLng), "");
                    }

                    AmapNaviParams params = new AmapNaviParams(start, null, end, AmapNaviType.DRIVER);

                    AmapNaviPage.getInstance().showRouteActivity(context, params, null);
                } catch (Throwable throwable) {
                    throwable.printStackTrace();
                    if (getEnableLog()) {
                        Log.d("Current HEAP: ", getHEAP().toString());
                    }
                    methodResult.error(throwable.getMessage(), null, null);
                    return;
                }

                // convert result to jsonable result
                String jsonableResult = "success";

                methodResult.success(jsonableResult);
            });
            put("navigate", (args, methodResult) -> {
                // args
                int contextRefId = (int) ((Map<String, Object>) args).get("context");
                double fromLat = (double) ((Map<String, Object>) args).get("fromLat");
                double fromLng = (double) ((Map<String, Object>) args).get("fromLng");
                double toLat = (double) ((Map<String, Object>) args).get("toLat");
                double toLng = (double) ((Map<String, Object>) args).get("toLng");
                String rawPassby = (String) ((Map<String, Object>) args).get("passby");
                // int strategy = (int) ((Map<String, Object>) args).get("strategy");

                Context context = (Context) getHEAP().get(contextRefId);
                AMapNavi navi = AMapNavi.getInstance(context);
                navi.addAMapNaviListener(new AMapNaviListener() {
                    @Override
                    public void onInitNaviFailure() {
                        Log.d(TAG, "onInitNaviFailure");
                    }

                    @Override
                    public void onInitNaviSuccess() {
                        Log.d(TAG, "onInitNaviSuccess");
                        int strategy = 0;
                        // try {
                        //     strategy = navi.strategyConvert(true, false, false, false, false);
                        // } catch (Exception e) {
                        //     methodResult.error(e.getMessage(), e.getLocalizedMessage(), e.toString());
                        //     return;
                        // }

                        // 处理途经点
                        // List<NaviLatLng> passbyList = new ArrayList<>();
                        // if (rawPassby != null && !rawPassby.isEmpty()){
                        //     String[] latLngArray = rawPassby.split(";");
                        //     for (String latLngString : latLngArray) {
                        //         String[] latLng = latLngString.split(",");
                        //         double lat = Double.parseDouble(latLng[0]);
                        //         double lng = Double.parseDouble(latLng[1]);
                        //         passbyList.add(new NaviLatLng(lat, lng));
                        //     }
                        // }

                        // 无论起点坐标还是终点坐标，均可设置多个。当坐标以列表形式存放时，列表的尾点为实际导航点（起点或终点），
                        // 其他坐标点为辅助信息，带有方向性，可有效避免算路到马路的另一侧。
                        // 如果起点经纬度为0, 那么就以无起点方式导航(即以当前位置为起点)
                        if (fromLat == 0 || fromLng == 0) {
                            List<NaviLatLng> endList = new ArrayList<>();
                            endList.add(new NaviLatLng(toLat, toLng));

                            navi.calculateDriveRoute(endList, new ArrayList<>(), strategy);
                        } else {
                            // 起点列表
                            List<NaviLatLng> startList = new ArrayList<>();
                            startList.add(new NaviLatLng(fromLat, fromLat));

                            // 终点列表
                            List<NaviLatLng> endList = new ArrayList<>();
                            endList.add(new NaviLatLng(toLat, toLng));

                            navi.calculateDriveRoute(startList, endList, new ArrayList<>(), strategy);
                        }

                        methodResult.success("success");
                    }

                    @Override
                    public void onStartNavi(int i) {
                        Log.d(TAG, "onStartNavi");
                    }

                    @Override
                    public void onTrafficStatusUpdate() {
                        Log.d(TAG, "onTrafficStatusUpdate");
                    }

                    @Override
                    public void onLocationChange(AMapNaviLocation aMapNaviLocation) {
                        Log.d(TAG, "onLocationChange");
                    }

                    @Override
                    public void onGetNavigationText(int i, String s) {
                        Log.d(TAG, "onGetNavigationText");
                    }

                    @Override
                    public void onGetNavigationText(String s) {
                        Log.d(TAG, "onGetNavigationText");
                    }

                    @Override
                    public void onEndEmulatorNavi() {
                        Log.d(TAG, "onEndEmulatorNavi");
                    }

                    @Override
                    public void onArriveDestination() {
                        Log.d(TAG, "onArriveDestination");
                    }

                    @Override
                    public void onCalculateRouteFailure(int i) {
                        Log.d(TAG, "onCalculateRouteFailure");
                    }

                    @Override
                    public void onReCalculateRouteForYaw() {
                        Log.d(TAG, "onReCalculateRouteForYaw");
                    }

                    @Override
                    public void onReCalculateRouteForTrafficJam() {
                        Log.d(TAG, "onReCalculateRouteForTrafficJam");
                    }

                    @Override
                    public void onArrivedWayPoint(int i) {
                        Log.d(TAG, "onArrivedWayPoint");
                    }

                    @Override
                    public void onGpsOpenStatus(boolean b) {
                        Log.d(TAG, "onGpsOpenStatus");
                    }

                    @Override
                    public void onNaviInfoUpdate(NaviInfo naviInfo) {
                        Log.d(TAG, "onNaviInfoUpdate");
                    }

                    @Override
                    public void onNaviInfoUpdated(AMapNaviInfo aMapNaviInfo) {
                        Log.d(TAG, "onNaviInfoUpdated");
                    }

                    @Override
                    public void updateCameraInfo(AMapNaviCameraInfo[] aMapNaviCameraInfos) {
                        Log.d(TAG, "updateCameraInfo");
                    }

                    @Override
                    public void updateIntervalCameraInfo(AMapNaviCameraInfo aMapNaviCameraInfo, AMapNaviCameraInfo aMapNaviCameraInfo1, int i) {
                        Log.d(TAG, "updateIntervalCameraInfo");
                    }

                    @Override
                    public void onServiceAreaUpdate(AMapServiceAreaInfo[] aMapServiceAreaInfos) {
                        Log.d(TAG, "onServiceAreaUpdate");
                    }

                    @Override
                    public void showCross(AMapNaviCross aMapNaviCross) {
                        Log.d(TAG, "showCross");
                    }

                    @Override
                    public void hideCross() {
                        Log.d(TAG, "hideCross");
                    }

                    @Override
                    public void showModeCross(AMapModelCross aMapModelCross) {
                        Log.d(TAG, "showModeCross");
                    }

                    @Override
                    public void hideModeCross() {
                        Log.d(TAG, "hideModeCross");
                    }

                    @Override
                    public void showLaneInfo(AMapLaneInfo[] aMapLaneInfos, byte[] bytes, byte[] bytes1) {
                        Log.d(TAG, "showLaneInfo");
                    }

                    @Override
                    public void showLaneInfo(AMapLaneInfo aMapLaneInfo) {
                        Log.d(TAG, "showLaneInfo");
                    }

                    @Override
                    public void hideLaneInfo() {
                        Log.d(TAG, "hideLaneInfo");
                    }

                    @Override
                    public void onCalculateRouteSuccess(int[] ints) {
                        Log.d(TAG, "onCalculateRouteSuccess");
                    }

                    @Override
                    public void notifyParallelRoad(int i) {
                        Log.d(TAG, "notifyParallelRoad");
                    }

                    @Override
                    public void OnUpdateTrafficFacility(AMapNaviTrafficFacilityInfo aMapNaviTrafficFacilityInfo) {
                        Log.d(TAG, "OnUpdateTrafficFacility");
                    }

                    @Override
                    public void OnUpdateTrafficFacility(AMapNaviTrafficFacilityInfo[] aMapNaviTrafficFacilityInfos) {
                        Log.d(TAG, "OnUpdateTrafficFacility");
                    }

                    @Override
                    public void OnUpdateTrafficFacility(TrafficFacilityInfo trafficFacilityInfo) {
                        Log.d(TAG, "OnUpdateTrafficFacility");
                    }

                    @Override
                    public void updateAimlessModeStatistics(AimLessModeStat aimLessModeStat) {
                        Log.d(TAG, "updateAimlessModeStatistics");
                    }

                    @Override
                    public void updateAimlessModeCongestionInfo(AimLessModeCongestionInfo aimLessModeCongestionInfo) {
                        Log.d(TAG, "updateAimlessModeCongestionInfo");
                    }

                    @Override
                    public void onPlayRing(int i) {
                        Log.d(TAG, "onPlayRing");
                    }

                    @Override
                    public void onCalculateRouteSuccess(AMapCalcRouteResult aMapCalcRouteResult) {
                        navi.startNavi(NaviType.GPS);
                        Log.d(TAG, "onCalculateRouteSuccess");
                    }

                    @Override
                    public void onCalculateRouteFailure(AMapCalcRouteResult aMapCalcRouteResult) {
                        Log.d(TAG, "onCalculateRouteFailure");
                    }

                    @Override
                    public void onNaviRouteNotify(AMapNaviRouteNotifyData aMapNaviRouteNotifyData) {
                        Log.d(TAG, "onNaviRouteNotify");
                    }
                });
            });
        }};
    }
}
