import 'package:emoji_picker_flutter/emoji_picker_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('each category tab exposes an accessible name for its category', (
    WidgetTester tester,
  ) async {
    final controller = TextEditingController();

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: EmojiPicker(
            textEditingController: controller,
            onEmojiSelected: (category, emoji) {},
            config: const Config(
              height: 256,
              categoryViewConfig: CategoryViewConfig(
                recentTabBehavior: RecentTabBehavior.NONE,
              ),
            ),
          ),
        ),
      ),
    );
    await tester.pumpAndSettle();

    for (final name in const [
      'Smileys',
      'Animals',
      'Food',
      'Travel',
      'Activities',
      'Objects',
      'Symbols',
      'Flags',
    ]) {
      expect(
        find.bySemanticsLabel(RegExp('^$name\\b')),
        findsOneWidget,
        reason: 'expected a semantics node labeled "$name"',
      );
    }
  });
}
