import 'package:json_annotation/json_annotation.dart';

part 'model.g/destination.g.dart';

@JsonSerializable()
class Destination {
  Destination({this.id, this.title, this.image, this.rate, this.favorite});

  late int? id;
  late String? title;
  late String? image;
  late double? rate;
  late bool? favorite;

  factory Destination.fromJson(Map<String, dynamic> json) =>
      _$DestinationFromJson(json);

  Map<String, dynamic> toJson() => _$DestinationToJson(this);
}
