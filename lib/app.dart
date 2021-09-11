import 'package:color_transformation/widgets/toggle_color_buttons.dart';
import 'package:flutter/material.dart';
import 'package:color_transformation/widgets/color_transform_box.dart';
import 'package:color_transformation/theme/app_colors.dart';

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

class AppColumn extends StatefulWidget {
  const AppColumn({
    Key? key,
  }) : super(key: key);

  @override
  State<AppColumn> createState() => _AppColumnState();
}

class _AppColumnState extends State<AppColumn> {
  Color boxColor = Colors.red;

  void changeColor(Color newColor) {
    setState(() {
      boxColor = newColor;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        ColorTransformBox(
          width: 200,
          height: 200,
          backgroundColor: boxColor,
          borderColor: Colors.black,
        ),
        ToggleColorButtons(
          changeColorCallback: changeColor,
        ),
      ],
    );
  }
}
