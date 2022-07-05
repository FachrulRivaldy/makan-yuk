class Restaurant {
  final String image;
  final String name;
  final String place;
  final String description;

  const Restaurant(
      {required this.image,
      required this.name,
      required this.place,
      required this.description});
}

List<Restaurant> restaurants = const [
  Restaurant(
      image: "assets/images/JapanResto.png",
      name: "Tokyo Cuisine",
      place: "Jakarta Utara",
      description: "Restoran bintang 5 dengan tema ala Jepang"),
  Restaurant(
      image: "assets/images/ItalianResto.png",
      name: "Italian Resto",
      place: "Jakarta Barat",
      description: "Restoran bintang 5 dengan tema ala Italia"),
  Restaurant(
      image: "assets/images/ChineseResto.png",
      name: "Chinese Resto",
      place: "Jakarta Selatan",
      description: "Restoran bintang 5 dengan tema ala Tiongkok"),
  Restaurant(
      image: "assets/images/AmericanResto.png",
      name: "American Food",
      place: "Jakarta Utara",
      description: "Restoran bintang 5 dengan tema ala Amerika"),
];
