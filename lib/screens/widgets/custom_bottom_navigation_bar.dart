import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../constants/maps.dart';
import '../../provider/page_index_provider.dart';
import '../../res/media/colors/colors.dart';
import 'bottom_nav_profile_button.dart';
import 'custom_bottom_nav_bar_button.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({
    super.key,
  });

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  List<Widget> bottomNavigationBarEntries = [];

  @override
  void initState() {
    int index = -1;

    bottomNavigationBarEntries = [
      ...bottomBarIconMap.entries.map(
        (e) {
          index += 1;
          return Expanded(
            child: CustomBottomNavBarButton(
              index: index,
              imagePath: e.value,
              label: e.key,
            ),
          );
        },
      ).toList(),
      Expanded(
        child: BottomNavProfileButton(
          index: index + 1,
        ),
      )
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          color: Colors.white,
          child: Row(
              mainAxisSize: MainAxisSize.max,
              children: bottomNavigationBarEntries),
        ),
        Consumer(
          builder: (_, WidgetRef ref, __) {
            final pageIndex = ref.watch(pageIndexProvider);
            return AnimatedPositioned(
              duration: const Duration(
                milliseconds: 150,
              ),
              left: (MediaQuery.of(context).size.width /
                              bottomNavigationBarEntries.length -
                          10) *
                      pageIndex +
                  (pageIndex * 10),
              child: Container(
                height: 2,
                width: MediaQuery.of(context).size.width /
                        bottomNavigationBarEntries.length -
                    10,
                color: primaryColor,
              ),
            );
          },
        )
      ],
    );
  }
}
