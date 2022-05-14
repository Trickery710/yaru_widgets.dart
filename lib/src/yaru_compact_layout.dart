import 'package:flutter/material.dart';
import 'package:yaru_widgets/yaru_widgets.dart';

/// A responsive layout switching between [YaruWideLayout]
/// and [YaruNarrowLayout] depening on the screen width.
class YaruCompactLayout extends StatefulWidget {
  const YaruCompactLayout({
    Key? key,
    required this.pageItems,
    this.narrowLayoutMaxWidth = 600,
  }) : super(key: key);

  /// The list of [YaruPageItem] has to be provided.
  final List<YaruPageItem> pageItems;

  /// The max width after the layout switches to the [YaruWideLayout], defaults to 600.
  final double narrowLayoutMaxWidth;

  @override
  State<YaruCompactLayout> createState() => _YaruCompactLayoutState();
}

class _YaruCompactLayoutState extends State<YaruCompactLayout> {
  var _index = -1;
  var _previousIndex = 0;

  void _setIndex(int index) {
    _previousIndex = _index;
    _index = index;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: LayoutBuilder(
            builder: (context, constraints) =>
                constraints.maxWidth > widget.narrowLayoutMaxWidth
                    ? YaruWideLayout(
                        labelType: NavigationRailLabelType.none,
                        pageItems: widget.pageItems,
                        initialIndex: _index == -1 ? _previousIndex : _index,
                        onSelected: _setIndex,
                      )
                    : YaruNarrowLayout(
                        showSelectedLabels: false,
                        pageItems: widget.pageItems,
                        initialIndex: _index == -1 ? _previousIndex : _index,
                        onSelected: _setIndex,
                      )),
      ),
    );
  }
}