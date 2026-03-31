import 'package:flutter/material.dart';

@immutable
class Skills {
  final String name;
  final String? brandIcon;
  final String? imagePath;

  const Skills({
    required this.name,
    this.brandIcon,
    this.imagePath
  });
}