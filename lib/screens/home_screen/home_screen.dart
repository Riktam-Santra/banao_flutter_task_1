import 'package:flutter/material.dart';
import 'package:flutter_task_1/res/media/font_configs/font_config.dart';
import 'package:flutter_task_1/screens/home_screen/widgets/button_grid.dart';
import 'package:flutter_task_1/screens/home_screen/widgets/content_section.dart';
import 'package:flutter_task_1/screens/home_screen/widgets/program_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 16, top: 8),
              child: Text("Hello, Priya!", style: homePageTitle),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(top: 2, left: 16),
              child: Text(
                "What do you wanna learn today?",
                style: homePageSubtitle,
              ),
            ),
          ),
          const ButtonGrid(),
          const ContentSection(
            aspectRatio: 1.27,
            sectionTitle: "Events and experiences",
            children: [
              ProgramCard(
                imagePath:
                    "lib/res/media/images/illustrations/card_media_1.png",
                imageBackgroundColor: Color.fromRGBO(221, 227, 194, 1),
                category: "lifestyle",
                title: "A complete guide for your newborn baby",
                subtitle: "16 lessions",
              ),
              ProgramCard(
                imagePath:
                    "lib/res/media/images/illustrations/card_media_2.png",
                imageBackgroundColor: Color.fromRGBO(255, 240, 211, 1),
                category: "working parents",
                title: "Understanding of human behaviour",
                subtitle: "16 lessions",
              )
            ],
          ),
          const ContentSection(
            aspectRatio: 1.20,
            sectionTitle: "Programs for you",
            children: [
              ProgramCard(
                imagePath:
                    "lib/res/media/images/illustrations/card_media_3.jpeg",
                imageBackgroundColor: Color.fromRGBO(221, 227, 194, 1),
                category: "babycare",
                title: "Understanding of human behaviour",
                subtitle: "16 lessions",
                buttonText: "Book",
                imageIsFull: true,
              ),
              ProgramCard(
                imagePath:
                    "lib/res/media/images/illustrations/card_media_3.jpeg",
                imageBackgroundColor: Color.fromRGBO(255, 240, 211, 1),
                category: "babycare",
                title: "Understanding of human behaviour",
                subtitle: "16 lessions",
                imageIsFull: true,
                buttonText: "book",
              )
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 24),
            child: ContentSection(
              aspectRatio: 1.27,
              sectionTitle: "Programs for you",
              children: [
                ProgramCard(
                  imagePath:
                      "lib/res/media/images/illustrations/card_media_3.jpeg",
                  imageBackgroundColor: Color.fromRGBO(221, 227, 194, 1),
                  category: "babycare",
                  title: "Understanding of human behaviour",
                  subtitle: "3 min",
                  locked: true,
                  imageIsFull: true,
                ),
                ProgramCard(
                  imagePath:
                      "lib/res/media/images/illustrations/card_media_3.jpeg",
                  imageBackgroundColor: Color.fromRGBO(255, 240, 211, 1),
                  category: "babycare",
                  title: "Understanding of human behaviour",
                  subtitle: '1 min',
                  locked: true,
                  imageIsFull: true,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
