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

  final List<Map<String, String>> _events = [
    {
      'imagePath': 'images/image_event_1.png',
    },
    {
      'imagePath': 'images/image_event_2.jpeg',
    },
    {
      'imagePath': 'images/image_event_1.png',
    },
    {
      'imagePath': 'images/image_event_2.jpeg',
    },
    {
      'imagePath': 'images/image_event_1.png',
    },
    {
      'imagePath': 'images/image_event_2.jpeg',
    },
    {
      'imagePath': 'images/image_event_1.png',
    },
    {
      'imagePath': 'images/image_event_2.jpeg',
    },
  ];
  List<Map<String, String>> getDestinations() {
    return _destinations;
  }

  List<Map<String, String>> getEvents() {
    return _events;
  }
}
