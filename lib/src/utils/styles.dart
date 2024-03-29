import 'package:flutter/material.dart';

class BasicButtonStyle extends ButtonStyle {
  BasicButtonStyle({
    TextStyle? textStyle,
    Color? backgroundColor,
    Color? disabledColor,
    Color? foregroundColor,
    Color? overlayColor,
    Color? shadowColor,
    double? elevation,
    EdgeInsets? padding,
    Size? minimumSize,
    BorderSide? side,
    OutlinedBorder? shape,
    MouseCursor? mouseCursor,
    VisualDensity? visualDensity,
    MaterialTapTargetSize? tapTargetSize,
    Duration? animationDuration,
    bool? enableFeedback,
    Alignment? alignment,
  }) : super(
          textStyle: MaterialStateProperty.all(textStyle),
          backgroundColor: MaterialStateProperty.resolveWith((states) {
            if (disabledColor != null && states.contains(MaterialState.disabled)) {
              return disabledColor;
            }
            return backgroundColor;
          }),
          foregroundColor: MaterialStateProperty.all(foregroundColor),
          overlayColor: MaterialStateProperty.all(overlayColor),
          shadowColor: MaterialStateProperty.all(shadowColor),
          elevation: MaterialStateProperty.all(elevation),
          padding: MaterialStateProperty.all(padding),
          minimumSize: MaterialStateProperty.all(minimumSize),
          side: MaterialStateProperty.all(side),
          shape: MaterialStateProperty.all(shape),
          mouseCursor: MaterialStateProperty.all(mouseCursor),
          visualDensity: visualDensity,
          tapTargetSize: tapTargetSize,
          animationDuration: animationDuration,
          enableFeedback: enableFeedback,
          alignment: alignment,
        );
}

class SixthSenseStyles {
  static InputDecoration inputDecoration(
    String hintText, {
    IconData? prefixIcon,
    String? error,
    IconData? suffixIcon,
    Color iconColor = Colors.black,
    Color fillColor = Colors.white,
  }) {
    final _b = OutlineInputBorder(
      borderSide: const BorderSide(color: Color(0xFF9F150D), width: 1),
      borderRadius: BorderRadius.circular(8),
    );
    final _b2 = OutlineInputBorder(
      borderSide: const BorderSide(color: Color(0xFF9F150D), width: 2),
      borderRadius: BorderRadius.circular(8),
    );
    return InputDecoration(
      fillColor: fillColor,
      filled: true,
      prefixIcon: prefixIcon == null ? null : Icon(prefixIcon, color: iconColor),
      suffixIcon: suffixIcon == null ? null : Icon(suffixIcon, color: iconColor),
      hintText: hintText,
      alignLabelWithHint: true,
      contentPadding: const EdgeInsets.symmetric(horizontal: 12),
      errorText: error,
      border: _b,
      errorBorder: _b,
      enabledBorder: _b,
      focusedBorder: _b2,
      disabledBorder: _b,
      focusedErrorBorder: _b2,
    );
  }
}
