import 'package:flutter/material.dart';
import 'package:flutter_task_1/res/media/colors/colors.dart';
import 'package:flutter_task_1/screens/chat_screen.dart';
import 'package:flutter_task_1/screens/home_screen/home_screen.dart';
import 'package:flutter_task_1/screens/hub_screen.dart';
import 'package:flutter_task_1/screens/learn_screen.dart';
import 'package:flutter_task_1/screens/profile_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'screens/widgets/custom_bottom_navigation_bar.dart';
import 'screens/widgets/menu_button.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

final pageController = PageController();

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final screenList = [
    const HomeScreen(),
    const LearnScreen(),
    const HubScreen(),
    const ChatScreen(),
    const ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: primaryColor),
        useMaterial3: true,
        textTheme: GoogleFonts.interTextTheme(),
      ),
      home: Scaffold(
        bottomNavigationBar: const CustomBottomNavigationBar(),
        appBar: AppBar(
          surfaceTintColor: Colors.white,
          leading: const Padding(
            padding: EdgeInsets.only(left: 16),
            child: MenuButton(),
          ),
          actions: [
            InkWell(
              borderRadius: BorderRadius.circular(50),
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Image.asset(
                  "lib/res/media/images/icons/forum.png",
                  height: 24,
                ),
              ),
              onTap: () {},
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: InkWell(
                borderRadius: BorderRadius.circular(50),
                child: Image.asset(
                  "lib/res/media/images/icons/Notification.png",
                  height: 24,
                ),
                onTap: () {},
              ),
            )
          ],
        ),
        body: Consumer(
          builder: (_, WidgetRef ref, __) {
            return PageView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                return screenList[index];
              },
              controller: pageController,
              physics: const NeverScrollableScrollPhysics(),
            );
          },
        ),
      ),
    );
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }
}
