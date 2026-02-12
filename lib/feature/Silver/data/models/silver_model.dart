class SilverModel {
  String? name;
  num? price;
  String? symbol;
  String? updatedAt;
  String? updatedAtReadable;

  SilverModel({
    required this.name,
    required this.price,
    required this.symbol,
    required this.updatedAt,
    required this.updatedAtReadable,
  });
  factory SilverModel.fromJson(Map<String, dynamic> json) {
    return SilverModel(
      name: json['name'],
      price: json['price'],
      symbol: json['symbol'],
      updatedAt: json['updatedAt'],
      updatedAtReadable: json['updatedAtReadable'],
    );
  }
}
