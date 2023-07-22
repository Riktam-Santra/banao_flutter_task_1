import 'package:flutter/material.dart';

import '../../../res/media/font_configs/font_config.dart';

class SectionTitle extends StatelessWidget {
  final String title;
  const SectionTitle({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
        child: Row(
          children: [
            Text(
              title,
              style: sectionSubtitle,
            ),
            const Spacer(),
            const Text(
              "View all",
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                letterSpacing: -0.12,
                color: Color.fromRGBO(109, 116, 122, 1),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Image.asset(
                "lib/res/media/images/icons/forward.png",
                height: 10,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
