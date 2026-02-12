class GoldModel {
  String? name;
  num? price;
  String? symbol;
  String? updatedAt;
  String? updatedAtReadable;
  GoldModel({
    required this.name,
    required this.price,
    required this.symbol,
    required this.updatedAt,
    required this.updatedAtReadable,
  });
  factory GoldModel.fromJson(Map<String, dynamic> json) {
    return GoldModel(
      name: json['name'],
      price: json['price'],
      symbol: json['symbol'],
      updatedAt: json['updatedAt'],
      updatedAtReadable: json['updatedAtReadable'],
    );
  }
}
