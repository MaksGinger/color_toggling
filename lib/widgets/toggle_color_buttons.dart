import 'package:color_transformation/theme/app_colors.dart';
import 'package:flutter/material.dart';

class ToggleColorButtons extends StatelessWidget {
  const ToggleColorButtons({
    Key? key,
    required this.changeColorCallback,
  }) : super(key: key);

  final void Function(Color newColor) changeColorCallback;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView.builder(
        itemExtent: 130,
        itemCount: AppColors.paintBoxColors.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, int index) {
          final colorName = AppColors.paintBoxColors.keys.elementAt(index);

          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: _ToggleColorButton(
              colorName: colorName,
              backgroundColor: AppColors.paintBoxColors[colorName]!,
              changeColorCallback: changeColorCallback,
            ),
          );
        },
      ),
    );
  }
}

class _ToggleColorButton extends StatelessWidget {
  const _ToggleColorButton({
    Key? key,
    required this.colorName,
    required this.backgroundColor,
    required this.changeColorCallback,
  }) : super(key: key);

  final String colorName;
  final Color backgroundColor;
  final void Function(Color newColor) changeColorCallback;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        changeColorCallback(backgroundColor);
      },
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(backgroundColor),
      ),
      child: Text(colorName),
    );
  }
}
