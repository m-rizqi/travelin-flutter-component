import 'package:flutter/material.dart' as material;

abstract class Icon {
  material.Widget build();
}

class MaterialIcon extends Icon {

  MaterialIcon({
    required this.iconData,
    this.size,
    this.contentDescription,
    this.color,
  });
  final material.IconData iconData;
  final double? size;
  final String? contentDescription;
  final material.Color? color;

  @override
  material.Widget build() {
    return material.Icon(
      iconData,
      size: size,
      semanticLabel: contentDescription,
      color: color,
    );
  }
}
