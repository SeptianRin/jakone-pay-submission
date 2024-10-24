class Dummy {
  // List of destinations for the cards
  final List<Map<String, String>> _destinations = [
    {
      'title': 'Ancol Entrance Gate',
      'imagePath': 'images/img_ancol.png',
    },
    {
      'title': 'Monumen Nasional',
      'imagePath': 'images/img_monas_small.png',
    },
    {
      'title': 'Taman Mini',
      'imagePath': 'images/img_ancol.png',
    },
  ];

  List<Map<String, String>> getDestinations() {
    return _destinations;
  }
}
