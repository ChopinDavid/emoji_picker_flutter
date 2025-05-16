import 'package:emoji_picker_flutter/emoji_picker_flutter.dart';
import 'package:flutter/material.dart';

/// Default Bottom Action Bar implementation
class DefaultBottomActionBar extends BottomActionBar {
  /// Constructor
  const DefaultBottomActionBar(super.config, super.state, super.showSearchView,
      {super.key});

  @override
  State<StatefulWidget> createState() => _DefaultBottomActionBarState();
}

class _DefaultBottomActionBarState extends State<DefaultBottomActionBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: widget.config.bottomActionBarConfig.backgroundColor,
      child: _buildSearchViewButton(),
    );
  }

  Widget _buildSearchViewButton() {
    if (widget.config.bottomActionBarConfig.showSearchViewButton) {
      return ClipRRect(
        clipBehavior: Clip.hardEdge,
        borderRadius: BorderRadius.circular(1000),
        child: Material(
          color: widget.config.bottomActionBarConfig.buttonColor,
          child: InkWell(
            child: SearchButton(
              widget.config,
              widget.showSearchView,
              widget.config.bottomActionBarConfig.buttonIconColor,
            ),
          ),
        ),
      );
    }
    return const SizedBox.shrink();
  }

  Widget _buildBackspaceButton() {
    if (widget.config.bottomActionBarConfig.showBackspaceButton) {
      return BackspaceButton(
        widget.config,
        widget.state.onBackspacePressed,
        widget.state.onBackspaceLongPressed,
        widget.config.bottomActionBarConfig.buttonIconColor,
      );
    }
    return const SizedBox.shrink();
  }
}
