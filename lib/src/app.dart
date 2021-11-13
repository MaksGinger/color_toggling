import 'package:color_transformation/src/theme/app_colors.dart';
import 'package:color_transformation/src/widgets/app_column.dart';
import 'package:flutter/material.dart';

class ColorTransformApp extends StatelessWidget {
  const ColorTransformApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Color App',
      home: ColorTransformWidget(),
    );
  }
}

class ColorTransformWidget extends StatelessWidget {
  const ColorTransformWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Color transformation',
        ),
        backgroundColor: AppColors.appBarColor,
      ),
      backgroundColor: AppColors.scaffoldBackgroundColor,
      body: const Center(
        child: AppColumn(),
      ),
    );
  }
}
