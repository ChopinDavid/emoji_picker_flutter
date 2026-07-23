import 'package:emoji_picker_flutter/emoji_picker_flutter.dart';
import 'package:flutter/material.dart';

/// Template class for custom implementation
/// Inhert this class to create your own Category view
abstract class CategoryView extends StatefulWidget {
  /// Constructor
  const CategoryView(
    this.config,
    this.state,
    this.tabController,
    this.pageController, {
    super.key,
  });

  /// Config for customizations
  final Config config;

  /// State that holds current emoji data
  final EmojiViewState state;

  /// TabController for Category view
  final TabController tabController;

  /// Page Controller of Emoji view
  final PageController pageController;
}

/// Returns the icon for the category
IconData getIconForCategory(CategoryIcons categoryIcons, Category category) {
  switch (category) {
    case Category.RECENT:
      return categoryIcons.recentIcon;
    case Category.SMILEYS:
      return categoryIcons.smileyIcon;
    case Category.ANIMALS:
      return categoryIcons.animalIcon;
    case Category.FOODS:
      return categoryIcons.foodIcon;
    case Category.TRAVEL:
      return categoryIcons.travelIcon;
    case Category.ACTIVITIES:
      return categoryIcons.activityIcon;
    case Category.OBJECTS:
      return categoryIcons.objectIcon;
    case Category.SYMBOLS:
      return categoryIcons.symbolIcon;
    case Category.FLAGS:
      return categoryIcons.flagIcon;
  }
}

/// Returns the accessible name for the category, used as the category
/// tab's semantic label since the tab otherwise renders an icon only.
String getNameForCategory(Category category) {
  switch (category) {
    case Category.RECENT:
      return 'Recent';
    case Category.SMILEYS:
      return 'Smileys';
    case Category.ANIMALS:
      return 'Animals';
    case Category.FOODS:
      return 'Food';
    case Category.TRAVEL:
      return 'Travel';
    case Category.ACTIVITIES:
      return 'Activities';
    case Category.OBJECTS:
      return 'Objects';
    case Category.SYMBOLS:
      return 'Symbols';
    case Category.FLAGS:
      return 'Flags';
  }
}

/// Template class for custom implementation
/// Inhert this class to create your own category view state
class CategoryViewState<T extends CategoryView> extends State<T>
    with SkinToneOverlayStateMixin {
  @override
  Widget build(BuildContext context) {
    throw UnimplementedError('Category View implementation missing');
  }
}
