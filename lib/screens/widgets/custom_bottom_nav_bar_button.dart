import 'package:flutter/material.dart';
import 'package:flutter_task_1/main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../provider/page_index_provider.dart';
import '../../res/media/colors/colors.dart';

class CustomBottomNavBarButton extends StatelessWidget {
  final int index;
  final String imagePath;
  final String label;
  const CustomBottomNavBarButton({
    super.key,
    required this.index,
    required this.imagePath,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (_, WidgetRef ref, __) {
        return InkWell(
          onTap: () {
            ref.read(pageIndexProvider.notifier).changeState(index);
            pageController.animateToPage(index,
                duration: const Duration(milliseconds: 150),
                curve: Curves.easeInOut);
          },
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Consumer(
              builder: (_, WidgetRef ref, __) {
                final pageIndex = ref.watch(pageIndexProvider);
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image(
                      image: AssetImage(imagePath),
                      height: 22,
                      width: 22,
                      color: (pageIndex == index)
                          ? primaryColor
                          : const Color.fromRGBO(109, 116, 122, 1),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 2),
                      child: Text(
                        label,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.inter(
                          fontSize: 10,
                          fontWeight: FontWeight.w600,
                          color: (pageIndex == index)
                              ? primaryColor
                              : const Color.fromRGBO(109, 116, 122, 1),
                        ),
                      ),
                    )
                  ],
                );
              },
            ),
          ),
        );
      },
    );
  }
}
