class PropertyModel {
  String title;
  String subTitle;
  String details;
  String thumbnail;
  List<String> images;
  int rooms;
  int area;
  int floors;
  int price;
  int garage;
  int bathrooms;
  int kitchen;
  PropertyModel({
    required this.title,
    required this.subTitle,
    required this.details,
    required this.thumbnail,
    required this.images,
    required this.rooms,
    required this.area,
    required this.floors,
    required this.price,
    required this.garage,
    required this.bathrooms,
    required this.kitchen,

  });
}

List<PropertyModel> properties = [
  PropertyModel(
    title: 'Penthouse Villa',
    subTitle: "St. Second Avenue 780, NY",
    details:
        'Est pariatur pariatur nisi cupidatat deserunt incididunt enim eiusmod do minim exercitation. Exercitation mollit enim officia cupidatat occaecat quis cillum cupidatat consectetur ad. Amet in dolore occaecat labore non anim. Laborum anim occaecat eiusmod occaecat ut sit. Est excepteur Lorem culpa deserunt anim duis quis anim ea in tempor exercitation exercitation. Veniam magna pariatur irure commodo mollit ut irure. Tempor aute consequat in labore magna sunt et commodo ut cupidatat.',
    thumbnail: 'lib/images/properties/villa2.jpeg',
    images: [
      'lib/images/properties/villa1.jpeg',
      'lib/images/properties/villa2.jpeg',
      'lib/images/properties/villa3.jpeg'
    ],
    rooms: 5,
    area: 3000,
    floors: 3,
    price: 300000,
    garage: 2,
    bathrooms: 3,
    kitchen: 1

  ),
  PropertyModel(
    title: 'Duplex Housing',
    subTitle: "St. Second Avenue 780, NY",
    details:
        'Est pariatur pariatur nisi cupidatat deserunt incididunt enim eiusmod do minim exercitation. Exercitation mollit enim officia cupidatat occaecat quis cillum cupidatat consectetur ad. Amet in dolore occaecat labore non anim. Laborum anim occaecat eiusmod occaecat ut sit. Est excepteur Lorem culpa deserunt anim duis quis anim ea in tempor exercitation exercitation. Veniam magna pariatur irure commodo mollit ut irure. Tempor aute consequat in labore magna sunt et commodo ut cupidatat.',
    thumbnail: 'lib/images/properties/ap4.jpeg',
    images: [
      'lib/images/properties/ap2.jpeg',
      'lib/images/properties/ap7.jpeg',
      'lib/images/properties/ap6.jpeg'
    ],
    rooms: 3,
    area: 3500,
    floors: 2,
    price: 500000,
    garage: 2,
    bathrooms: 3,
    kitchen: 1

  ),
  PropertyModel(
    title: 'Orchard House',
    subTitle: "St. Second Avenue 780, NY",
    details:
        'Est pariatur pariatur nisi cupidatat deserunt incididunt enim eiusmod do minim exercitation. Exercitation mollit enim officia cupidatat occaecat quis cillum cupidatat consectetur ad. Amet in dolore occaecat labore non anim. Laborum anim occaecat eiusmod occaecat ut sit. Est excepteur Lorem culpa deserunt anim duis quis anim ea in tempor exercitation exercitation. Veniam magna pariatur irure commodo mollit ut irure. Tempor aute consequat in labore magna sunt et commodo ut cupidatat.',
    thumbnail: 'lib/images/properties/ap6.jpeg',
    images: [
      'lib/images/properties/ap4.jpeg',
      'lib/images/properties/ap5.jpeg',
      'lib/images/properties/ap6.jpeg'
    ],
    rooms: 4,
    area: 4200,
    floors: 3,
    price: 600000,
    garage: 2,
    bathrooms: 3,
    kitchen: 1

  ),
];
