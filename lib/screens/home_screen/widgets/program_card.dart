import 'package:flutter/material.dart';

import '../../../res/media/colors/colors.dart';
import '../../../res/media/font_configs/font_config.dart';

class ProgramCard extends StatelessWidget {
  final String imagePath;
  final Color imageBackgroundColor;
  final String category;
  final String title;
  final String subtitle;
  final String? buttonText;
  final bool? locked;
  final bool imageIsFull;
  const ProgramCard({
    super.key,
    required this.imagePath,
    required this.imageBackgroundColor,
    required this.category,
    required this.title,
    required this.subtitle,
    this.buttonText,
    this.locked,
    this.imageIsFull = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 8),
      child: PhysicalModel(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: const Color.fromRGBO(235, 237, 240, 1),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  color:
                      imageIsFull ? Colors.transparent : imageBackgroundColor,
                  child: ClipRRect(
                    borderRadius: imageIsFull
                        ? const BorderRadius.only(
                            topLeft: Radius.circular(8),
                            topRight: Radius.circular(8),
                          )
                        : BorderRadius.circular(0),
                    child: Image.asset(
                      imagePath,
                      height: 140,
                      fit: imageIsFull ? BoxFit.fill : BoxFit.contain,
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        category.toUpperCase(),
                        style: cardCategoryStyle,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0, bottom: 15),
                        child: Text(
                          title,
                          style: cardTitleStyle,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            subtitle,
                            style: cardLessonStyle,
                          ),
                          const Spacer(),
                          (locked == null && buttonText != null)
                              ? Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(color: primaryColor),
                                      borderRadius: BorderRadius.circular(50)),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 8, horizontal: 16),
                                    child: Text(
                                      buttonText ?? '',
                                      style: cardButtonStyle,
                                    ),
                                  ),
                                )
                              : Container(),
                          (locked == true && buttonText == null)
                              ? Image.asset(
                                  "lib/res/media/images/icons/lock.png",
                                  height: 20,
                                )
                              : Container()
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
