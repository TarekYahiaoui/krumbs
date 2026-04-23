class Cookie {
  final String name;

  final double price;
  final String image;

  const Cookie({required this.name, required this.price, required this.image});

  factory Cookie.fromJson(Map<String, dynamic> json) => Cookie(
    name: json['name'],

    price: json['price'].toDouble(),
    image: json['image'],
  );

  Map<String, dynamic> toJson() => {
    'name': name,
    'price': price,
    'image': image,
  };
}
