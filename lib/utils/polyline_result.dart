import '../point_lat_lng.dart';

class PolylineResult {
  /// the api status returned from google api
  ///
  /// returns OK if the api call is successful
  String? status;

  /// list of decoded points
  List<PointLatLng> points;

  /// the error message returned from google, if none, the result will be empty
  String? errorMessage;

  PolylineResult({this.status, this.points = const [], this.errorMessage = ""});
}
