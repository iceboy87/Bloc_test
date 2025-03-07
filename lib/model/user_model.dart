class UserModel {
  final String title;
  final String description;
  final String category;
  final double price;
  final double discountPercentage;
  final double rating;
  final int stock;
  final List<dynamic> tags;
  final String brand;
  final String sku;
  final int weight;
  final dynamic warrantyInformation;
  final dynamic shippingInformation;
  final String availabilityStatus;
  final dynamic returnPolicy;
  final int minimumOrderQuantity;
  final List<String> images;
  final String thumbnail;

  UserModel({
    required this.title,
    required this.description,
    required this.category,
    required this.price,
    required this.discountPercentage,
    required this.rating,
    required this.stock,
    required this.tags,
    required this.brand,
    required this.sku,
    required this.weight,
    required this.warrantyInformation,
    required this.shippingInformation,
    required this.availabilityStatus,
    required this.returnPolicy,
    required this.minimumOrderQuantity,
    required this.images,
    required this.thumbnail,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      title: json["title"] ?? "No Title",
      description: json["description"] ?? "No Description",
      category: json["category"] ?? "Unknown",
      price: (json["price"] ?? 0).toDouble(),
      discountPercentage: (json["discountPercentage"] ?? 0).toDouble(),
      rating: (json["rating"] ?? 0).toDouble(),
      stock: json["stock"] ?? 0,
      tags: json["tags"] ?? [],
      brand: json["brand"] ?? "No Brand",
      sku: json["sku"] ?? "N/A",
      weight: json["weight"] ?? 0,
      warrantyInformation: json["warrantyInformation"] ?? "No Info",
      shippingInformation: json["shippingInformation"] ?? "No Shipping Info",
      availabilityStatus: json["availabilityStatus"] ?? "Unavailable",
      returnPolicy: json["returnPolicy"] ?? "No Return Policy",
      minimumOrderQuantity: json["minimumOrderQuantity"] ?? 1,
      images: List<String>.from(json["images"] ?? ["https://demofree.sirv.com/nope-not-here.jpg"]),
      thumbnail: json["thumbnail"] ?? "https://demofree.sirv.com/nope-not-here.jpg",
    );
  }
}
