import 'package:hooks_riverpod/hooks_riverpod.dart';

class PageIndexNotifier extends StateNotifier<int> {
  PageIndexNotifier() : super(0);

  void changeState(int newState) => state = newState;
}

final pageIndexProvider = StateNotifierProvider<PageIndexNotifier, int>((ref) {
  return PageIndexNotifier();
});
