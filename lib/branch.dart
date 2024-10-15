class Branch {
  final String name;
  final String area;
  final String address;
  final String openingHours;
  final String imageUrl;
  final String contactDetails;
  final String services;
  final double latitude;
  final double longitude;
  

  Branch({
    required this.name,
    required this.area,
    required this.address,
    required this.openingHours,
    required this.imageUrl,
    required this.contactDetails,
    required this.services,
    required this.latitude,
    required this.longitude,
  });
  String get mapImageUrl {
    final zoomLevel = 15;
    return 'https://static-maps.yandex.ru/1.x/?ll=$longitude,$latitude&z=$zoomLevel&l=map&size=450,300';
  }

}