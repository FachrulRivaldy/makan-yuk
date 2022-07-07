class Restaurant {
  final String image;
  final String name;
  final String place;
  final String description;
  final double rating;
  final String detail;

  const Restaurant(
      {required this.image,
      required this.name,
      required this.place,
      required this.description,
      required this.rating,
      required this.detail});
}

List<Restaurant> restaurants = const [
  Restaurant(
      image: "assets/images/JapanResto.png",
      name: "Tokyo Cuisine",
      place: "Jakarta Utara",
      description: "Restoran bintang 5 dengan tema ala Jepang",
      rating: 4.5,
      detail: "Tokyo Cuisine adalah restoran bintang 5 yang memiliki tema Jepang serta menyajikan menu Jepang dengan nuansa dan dekorasi yang membuat pengunjung dapat merasakan suasana Jepang"),
  Restaurant(
      image: "assets/images/ItalianResto.png",
      name: "Italian Resto",
      place: "Jakarta Barat",
      description: "Restoran bintang 5 dengan tema ala Italia",
      rating: 4.8,
      detail: "Italian Resto adalah restoran bintang 5 yang memiliki tema Italia serta menyajikan menu Italia dengan nuansa dan dekorasi yang membuat pengunjung dapat merasakan suasana Italia"),
  Restaurant(
      image: "assets/images/ChineseResto.png",
      name: "Chinese Resto",
      place: "Jakarta Selatan",
      description: "Restoran bintang 5 dengan tema ala Tiongkok",
      rating: 4.4,
      detail: "Tokyo Cuisine adalah restoran bintang 5 yang memiliki tema Tiongkok serta menyajikan menu Tiongkok dengan nuansa dan dekorasi yang membuat pengunjung dapat merasakan suasana Tiongkok"),
  Restaurant(
      image: "assets/images/AmericanResto.png",
      name: "American Food",
      place: "Jakarta Utara",
      description: "Restoran bintang 5 dengan tema ala Amerika",
      rating: 4.6,
      detail: "Tokyo Cuisine adalah restoran bintang 5 yang memiliki tema Amerika serta menyajikan menu Amerika dengan nuansa dan dekorasi yang membuat pengunjung dapat merasakan suasana Amerika"),
];
