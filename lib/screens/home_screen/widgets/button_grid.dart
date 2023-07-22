import 'package:flutter/material.dart';

import '../../../constants/maps.dart';
import '../../../res/media/font_configs/font_config.dart';

class ButtonGrid extends StatelessWidget {
  const ButtonGrid({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 16),
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
        ),
        itemCount: gridIconMap.length,
        itemBuilder: (context, index) {
          final gridMap = gridIconMap.entries.toList()[index];
          return Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: const Color.fromRGBO(89, 139, 237, 1),
              ),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 14,
                horizontal: 24,
              ),
              child: Row(
                children: [
                  Image.asset(
                    gridMap.value,
                    height: 20,
                    width: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 12),
                    child: Text(
                      gridMap.key,
                      style: gridButtonTextStyle,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
