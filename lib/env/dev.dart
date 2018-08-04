import 'package:json_annotation/json_annotation.dart';

part 'dev.g.dart';

@JsonLiteral('dev.json', asConst: true)
Map<String, dynamic> get config => _$configJsonLiteral;