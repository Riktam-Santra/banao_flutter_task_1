import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_task_1/screens/home_screen/widgets/section_title.dart';

import 'program_card.dart';

class ContentSection extends StatelessWidget {
  final String sectionTitle;
  final List<ProgramCard> children;
  final double aspectRatio;
  const ContentSection({
    super.key,
    required this.sectionTitle,
    required this.children,
    required this.aspectRatio,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          title: sectionTitle,
        ),
        CarouselSlider(
          items: children,
          options: CarouselOptions(
            padEnds: false,
            viewportFraction: 0.67,
            enableInfiniteScroll: false,
            aspectRatio: aspectRatio,
            disableCenter: true,
          ),
        ),
      ],
    );
  }
}
