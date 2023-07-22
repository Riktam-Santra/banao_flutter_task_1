import 'package:flutter/material.dart';
import 'package:flutter_task_1/main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../provider/page_index_provider.dart';
import '../../res/media/colors/colors.dart';

class BottomNavProfileButton extends StatelessWidget {
  final int index;
  const BottomNavProfileButton({
    super.key,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (_, WidgetRef ref, __) {
        final pageIndex = ref.watch(pageIndexProvider);

        return InkWell(
          onTap: () {
            ref.read(pageIndexProvider.notifier).changeState(index);
            pageController.animateToPage(index,
                duration: const Duration(milliseconds: 150),
                curve: Curves.easeInOut);
          },
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.asset(
                  "lib/res/media/images/user/user.png",
                  height: 20,
                  width: 20,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 4),
                child: Text(
                  "Profile",
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
          ),
        );
      },
    );
  }
}
