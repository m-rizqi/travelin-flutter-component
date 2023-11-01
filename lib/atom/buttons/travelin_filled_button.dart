import 'package:flutter/material.dart';

class TravelinFilledButton extends StatelessWidget {
  const TravelinFilledButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.onLongPressed,
    this.fontSize,
    this.textAlign = TextAlign.left,
    this.fontWeight = FontWeight.w400,
    this.fontColor = Colors.white,
    this.maxLines = 2,
    this.textDecoration,
    this.decorationThickness = 0.35,
  });

  final String label;
  final VoidCallback onPressed;
  final VoidCallback? onLongPressed;
  final double? fontSize;
  final TextAlign textAlign;
  final FontWeight fontWeight;
  final Color fontColor;
  final int? maxLines;
  final TextDecoration? textDecoration;
  final double? decorationThickness;

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: onPressed,
      onLongPress: onLongPressed,
      style: const ButtonStyle().copyWith(
        elevation: MaterialStateProperty.all(1.5),
        padding: MaterialStateProperty.all(
          const EdgeInsets.symmetric(
            horizontal: 12,
            vertical: 8,
          ),
        ),
        backgroundColor: MaterialStateProperty.all(Theme.of(context).colorScheme.primary),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            label,
            maxLines: maxLines,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: fontSize,
              fontWeight: fontWeight,
              color: fontColor,
              decoration: textDecoration,
              decorationThickness: decorationThickness,
            ),
            textAlign: textAlign,
          ),
        ],
      ),
    );
  }
}
