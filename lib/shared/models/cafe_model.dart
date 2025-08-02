class CafeModel {
  final String id;
  final String name;
  final String address;
  final double latitude;
  final double longitude;
  final double rating;
  final int reviewCount;
  final String? imageUrl;
  final String? phoneNumber;
  final String? description;
  final List<String> tags;
  final bool isOpen;
  final int distance; // 미터 단위

  const CafeModel({
    required this.id,
    required this.name,
    required this.address,
    required this.latitude,
    required this.longitude,
    required this.rating,
    required this.reviewCount,
    this.imageUrl,
    this.phoneNumber,
    this.description,
    required this.tags,
    required this.isOpen,
    required this.distance,
  });

  factory CafeModel.fromJson(Map<String, dynamic> json) {
    return CafeModel(
      id: json['id'] as String,
      name: json['name'] as String,
      address: json['address'] as String,
      latitude: json['latitude'] as double,
      longitude: json['longitude'] as double,
      rating: json['rating'] as double,
      reviewCount: json['reviewCount'] as int,
      imageUrl: json['imageUrl'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      description: json['description'] as String?,
      tags: List<String>.from(json['tags'] ?? []),
      isOpen: json['isOpen'] as bool? ?? false,
      distance: json['distance'] as int? ?? 0,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'address': address,
      'latitude': latitude,
      'longitude': longitude,
      'rating': rating,
      'reviewCount': reviewCount,
      'imageUrl': imageUrl,
      'phoneNumber': phoneNumber,
      'description': description,
      'tags': tags,
      'isOpen': isOpen,
      'distance': distance,
    };
  }

  CafeModel copyWith({
    String? id,
    String? name,
    String? address,
    double? latitude,
    double? longitude,
    double? rating,
    int? reviewCount,
    String? imageUrl,
    String? phoneNumber,
    String? description,
    List<String>? tags,
    bool? isOpen,
    int? distance,
  }) {
    return CafeModel(
      id: id ?? this.id,
      name: name ?? this.name,
      address: address ?? this.address,
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
      rating: rating ?? this.rating,
      reviewCount: reviewCount ?? this.reviewCount,
      imageUrl: imageUrl ?? this.imageUrl,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      description: description ?? this.description,
      tags: tags ?? this.tags,
      isOpen: isOpen ?? this.isOpen,
      distance: distance ?? this.distance,
    );
  }
}
