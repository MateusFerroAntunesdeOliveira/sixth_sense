import 'package:flutter/material.dart';

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
      focusedBorder: _b,
      disabledBorder: _b,
      focusedErrorBorder: _b,
    );
  }
}
