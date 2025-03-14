import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff436833),
      surfaceTint: Color(0xff436833),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xffc4efac),
      onPrimaryContainer: Color(0xff2c4f1d),
      secondary: Color(0xff55624c),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffd8e7cb),
      onSecondaryContainer: Color(0xff3d4b36),
      tertiary: Color(0xff386667),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xffbbebec),
      onTertiaryContainer: Color(0xff1e4e4f),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff93000a),
      surface: Color(0xfff8faf0),
      onSurface: Color(0xff191d17),
      onSurfaceVariant: Color(0xff43483f),
      outline: Color(0xff73796e),
      outlineVariant: Color(0xffc3c8bb),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2e312b),
      inversePrimary: Color(0xffa8d292),
      primaryFixed: Color(0xffc4efac),
      onPrimaryFixed: Color(0xff052100),
      primaryFixedDim: Color(0xffa8d292),
      onPrimaryFixedVariant: Color(0xff2c4f1d),
      secondaryFixed: Color(0xffd8e7cb),
      onSecondaryFixed: Color(0xff131f0d),
      secondaryFixedDim: Color(0xffbccbb0),
      onSecondaryFixedVariant: Color(0xff3d4b36),
      tertiaryFixed: Color(0xffbbebec),
      onTertiaryFixed: Color(0xff002021),
      tertiaryFixedDim: Color(0xffa0cfd0),
      onTertiaryFixedVariant: Color(0xff1e4e4f),
      surfaceDim: Color(0xffd8dbd1),
      surfaceBright: Color(0xfff8faf0),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff2f5ea),
      surfaceContainer: Color(0xffecefe5),
      surfaceContainerHigh: Color(0xffe7e9df),
      surfaceContainerHighest: Color(0xffe1e4da),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff1b3e0e),
      surfaceTint: Color(0xff436833),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff517740),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff2d3a26),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff63715a),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff073d3e),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff477576),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff740006),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffcf2c27),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfff8faf0),
      onSurface: Color(0xff0f120c),
      onSurfaceVariant: Color(0xff32382e),
      outline: Color(0xff4f544a),
      outlineVariant: Color(0xff696f64),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2e312b),
      inversePrimary: Color(0xffa8d292),
      primaryFixed: Color(0xff517740),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff3a5e2a),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff63715a),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff4b5943),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff477576),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff2e5c5d),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffc5c8be),
      surfaceBright: Color(0xfff8faf0),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff2f5ea),
      surfaceContainer: Color(0xffe7e9df),
      surfaceContainerHigh: Color(0xffdbded4),
      surfaceContainerHighest: Color(0xffd0d3c9),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff113305),
      surfaceTint: Color(0xff436833),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff2e5220),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff23301d),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff404d38),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff003233),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff215051),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff600004),
      onError: Color(0xffffffff),
      errorContainer: Color(0xff98000a),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfff8faf0),
      onSurface: Color(0xff000000),
      onSurfaceVariant: Color(0xff000000),
      outline: Color(0xff282e25),
      outlineVariant: Color(0xff454b41),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2e312b),
      inversePrimary: Color(0xffa8d292),
      primaryFixed: Color(0xff2e5220),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff183a0a),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff404d38),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff2a3623),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff215051),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff02393b),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffb7bab0),
      surfaceBright: Color(0xfff8faf0),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xffeff2e8),
      surfaceContainer: Color(0xffe1e4da),
      surfaceContainerHigh: Color(0xffd3d6cc),
      surfaceContainerHighest: Color(0xffc5c8be),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffa8d292),
      surfaceTint: Color(0xffa8d292),
      onPrimary: Color(0xff163808),
      primaryContainer: Color(0xff2c4f1d),
      onPrimaryContainer: Color(0xffc4efac),
      secondary: Color(0xffbccbb0),
      onSecondary: Color(0xff273421),
      secondaryContainer: Color(0xff3d4b36),
      onSecondaryContainer: Color(0xffd8e7cb),
      tertiary: Color(0xffa0cfd0),
      onTertiary: Color(0xff003738),
      tertiaryContainer: Color(0xff1e4e4f),
      onTertiaryContainer: Color(0xffbbebec),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      surface: Color(0xff11140f),
      onSurface: Color(0xffe1e4da),
      onSurfaceVariant: Color(0xffc3c8bb),
      outline: Color(0xff8d9287),
      outlineVariant: Color(0xff43483f),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe1e4da),
      inversePrimary: Color(0xff436833),
      primaryFixed: Color(0xffc4efac),
      onPrimaryFixed: Color(0xff052100),
      primaryFixedDim: Color(0xffa8d292),
      onPrimaryFixedVariant: Color(0xff2c4f1d),
      secondaryFixed: Color(0xffd8e7cb),
      onSecondaryFixed: Color(0xff131f0d),
      secondaryFixedDim: Color(0xffbccbb0),
      onSecondaryFixedVariant: Color(0xff3d4b36),
      tertiaryFixed: Color(0xffbbebec),
      onTertiaryFixed: Color(0xff002021),
      tertiaryFixedDim: Color(0xffa0cfd0),
      onTertiaryFixedVariant: Color(0xff1e4e4f),
      surfaceDim: Color(0xff11140f),
      surfaceBright: Color(0xff373a33),
      surfaceContainerLowest: Color(0xff0c0f0a),
      surfaceContainerLow: Color(0xff191d17),
      surfaceContainer: Color(0xff1d211a),
      surfaceContainerHigh: Color(0xff282b25),
      surfaceContainerHighest: Color(0xff32362f),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffbee9a6),
      surfaceTint: Color(0xffa8d292),
      onPrimary: Color(0xff0a2c01),
      primaryContainer: Color(0xff749b61),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xffd2e1c5),
      onSecondary: Color(0xff1d2917),
      secondaryContainer: Color(0xff87957c),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xffb5e5e6),
      onTertiary: Color(0xff002b2c),
      tertiaryContainer: Color(0xff6b999a),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xffffd2cc),
      onError: Color(0xff540003),
      errorContainer: Color(0xffff5449),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff11140f),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xffd9ded1),
      outline: Color(0xffaeb4a7),
      outlineVariant: Color(0xff8d9286),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe1e4da),
      inversePrimary: Color(0xff2d501e),
      primaryFixed: Color(0xffc4efac),
      onPrimaryFixed: Color(0xff031500),
      primaryFixedDim: Color(0xffa8d292),
      onPrimaryFixedVariant: Color(0xff1b3e0e),
      secondaryFixed: Color(0xffd8e7cb),
      onSecondaryFixed: Color(0xff091405),
      secondaryFixedDim: Color(0xffbccbb0),
      onSecondaryFixedVariant: Color(0xff2d3a26),
      tertiaryFixed: Color(0xffbbebec),
      onTertiaryFixed: Color(0xff001415),
      tertiaryFixedDim: Color(0xffa0cfd0),
      onTertiaryFixedVariant: Color(0xff073d3e),
      surfaceDim: Color(0xff11140f),
      surfaceBright: Color(0xff42463e),
      surfaceContainerLowest: Color(0xff060804),
      surfaceContainerLow: Color(0xff1b1f18),
      surfaceContainer: Color(0xff252922),
      surfaceContainerHigh: Color(0xff30342d),
      surfaceContainerHighest: Color(0xff3b3f38),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffd1fdb9),
      surfaceTint: Color(0xffa8d292),
      onPrimary: Color(0xff000000),
      primaryContainer: Color(0xffa5ce8f),
      onPrimaryContainer: Color(0xff020f00),
      secondary: Color(0xffe6f5d8),
      onSecondary: Color(0xff000000),
      secondaryContainer: Color(0xffb8c7ac),
      onSecondaryContainer: Color(0xff040e02),
      tertiary: Color(0xffc9f9fa),
      onTertiary: Color(0xff000000),
      tertiaryContainer: Color(0xff9ccbcc),
      onTertiaryContainer: Color(0xff000e0e),
      error: Color(0xffffece9),
      onError: Color(0xff000000),
      errorContainer: Color(0xffffaea4),
      onErrorContainer: Color(0xff220001),
      surface: Color(0xff11140f),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xffffffff),
      outline: Color(0xffedf2e4),
      outlineVariant: Color(0xffbfc4b7),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe1e4da),
      inversePrimary: Color(0xff2d501e),
      primaryFixed: Color(0xffc4efac),
      onPrimaryFixed: Color(0xff000000),
      primaryFixedDim: Color(0xffa8d292),
      onPrimaryFixedVariant: Color(0xff031500),
      secondaryFixed: Color(0xffd8e7cb),
      onSecondaryFixed: Color(0xff000000),
      secondaryFixedDim: Color(0xffbccbb0),
      onSecondaryFixedVariant: Color(0xff091405),
      tertiaryFixed: Color(0xffbbebec),
      onTertiaryFixed: Color(0xff000000),
      tertiaryFixedDim: Color(0xffa0cfd0),
      onTertiaryFixedVariant: Color(0xff001415),
      surfaceDim: Color(0xff11140f),
      surfaceBright: Color(0xff4e514a),
      surfaceContainerLowest: Color(0xff000000),
      surfaceContainerLow: Color(0xff1d211a),
      surfaceContainer: Color(0xff2e312b),
      surfaceContainerHigh: Color(0xff393d36),
      surfaceContainerHighest: Color(0xff444841),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme());
  }


  ThemeData theme(ColorScheme colorScheme) => ThemeData(
    useMaterial3: true,
    brightness: colorScheme.brightness,
    colorScheme: colorScheme,
    textTheme: textTheme.apply(
      bodyColor: colorScheme.onSurface,
      displayColor: colorScheme.onSurface,
    ),
    scaffoldBackgroundColor: colorScheme.background,
    canvasColor: colorScheme.surface,
  );


  List<ExtendedColor> get extendedColors => [
  ];
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;

  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}
