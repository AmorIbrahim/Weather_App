class WeatherModel {
  final String cityName;
  final String date;
  final String? image;
  final String temp;
  final String maxTemp;
  final String minTemp;
  final String status;

  WeatherModel(
      {required this.cityName,
      required this.date,
      this.image,
      required this.temp,
      required this.maxTemp,
      required this.minTemp,
      required this.status});
}
