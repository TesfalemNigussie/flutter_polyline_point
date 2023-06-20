import 'package:flutter_polyline_point/flutter_polyline_point.dart';
import 'package:flutter_polyline_point/point_lat_lng.dart';
import 'package:flutter_polyline_point/utils/polyline_result.dart';
import 'package:flutter_polyline_point/utils/request_enums.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('get list of coordinates from two geographical positions', () async {
    final polylinePoints = PolylinePoints();
    PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
      Constants.API_KEY,
      const PointLatLng(6.5212402, 3.3679965),
      const PointLatLng(6.595680, 3.337030),
      travelMode: TravelMode.driving,
    );
    assert(result.points.isNotEmpty == true);
  });

  test('get list of coordinates from an encoded String', () {
    final polylinePoints = PolylinePoints();
    List<PointLatLng> points =
        polylinePoints.decodePolyline("_p~iF~ps|U_ulLnnqC_mqNvxq`@");
    assert(points.isNotEmpty);
  });
}
