import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:yaru_icons/yaru_icons.dart';
import 'package:yaru_widgets/yaru_widgets.dart';
import 'package:yaru_widgets_example/pages/check_box_row_page.dart';
import 'package:yaru_widgets_example/pages/color_picker_page.dart';
import 'package:yaru_widgets_example/pages/extra_option_row_page.dart';
import 'package:yaru_widgets_example/pages/section_page.dart';
import 'package:yaru_widgets_example/pages/selectable_container_page.dart';
import 'package:yaru_widgets_example/pages/slider_page.dart';
import 'package:yaru_widgets_example/pages/switch_row_page.dart';
import 'package:yaru_widgets_example/pages/tabbed_page_page.dart';
import 'package:yaru_widgets_example/pages/toggle_buttons_row_page.dart';
import 'package:yaru_widgets_example/widgets/option_button_list.dart';
import 'package:yaru_widgets_example/widgets/card_list.dart';
import 'package:yaru_widgets_example/widgets/row_list.dart';

final examplePageItems = <YaruPageItem>[
  YaruPageItem(
    title: 'YaruRow',
    iconData: YaruIcons.format_unordered_list,
    builder: (_) => YaruPage(children: [RowList()]),
  ),
  YaruPageItem(
    title: 'YaruExtraOptionRow',
    iconData: YaruIcons.settings_filled,
    builder: (_) => ExtraOptionRowPage(),
  ),
  YaruPageItem(
    title: 'YaruLinearProgressIndicator',
    iconData: YaruIcons.download,
    builder: (_) => YaruPage(
      children: [
        YaruLinearProgressIndicator(
          value: 50 / 100,
        )
      ],
    ),
  ),
  YaruPageItem(
    title: 'YaruSelectableContainer',
    iconData: YaruIcons.selection,
    builder: (_) => SelectableContainerPage(),
  ),
  YaruPageItem(
    title: 'YaruOptionButton',
    iconData: YaruIcons.settings,
    builder: (_) => YaruPage(children: [OptionButtonList()]),
  ),
  YaruPageItem(
    title: 'YaruOptionCard',
    iconData: YaruIcons.image,
    builder: (_) => YaruPage(children: [CardList()]),
  ),
  YaruPageItem(
    title: 'YaruSearchAppBar',
    iconData: YaruIcons.folder_search,
    builder: (_) => YaruPage(
      children: [
        YaruSearchAppBar(
          appBarHeight: kToolbarHeight,
          automaticallyImplyLeading: false,
          searchController: TextEditingController(),
          onChanged: (v) {},
          onEscape: () {},
          searchIconData: YaruIcons.search,
          searchHint: "Search...",
        )
      ],
    ),
  ),
  YaruPageItem(
    title: 'YaruSection',
    iconData: YaruIcons.window,
    builder: (_) => SectionPage(),
  ),
  YaruPageItem(
    title: 'YaruSingleInfoRow',
    iconData: YaruIcons.format_ordered_list,
    builder: (_) => YaruPage(
      children: [
        YaruSection(headline: "YaruSingleInfoRow", children: [
          YaruSingleInfoRow(
            infoLabel: "Info Label",
            infoValue: "Info Value",
          ),
          YaruSingleInfoRow(
            infoLabel: "Info Label",
            infoValue: "Info Value",
          )
        ])
      ],
    ),
  ),
  YaruPageItem(
    title: 'YaruSliderRow',
    iconData: YaruIcons.speaker_volume_medium,
    builder: (_) => SliderPage(),
  ),
  YaruPageItem(
    title: 'YaruSwitchRow',
    iconData: YaruIcons.radio_button_filled,
    builder: (_) => SwitchRowPage(),
  ),
  YaruPageItem(
    title: 'YaruToggleButtonsRow',
    iconData: YaruIcons.object_flip_horizontal,
    builder: (_) => ToggleButtonsRowPage(),
  ),
  YaruPageItem(
    title: 'YaruCheckboxRow',
    iconData: YaruIcons.checkbox_button_checked,
    builder: (_) => CheckBoxRowPage(),
  ),
  YaruPageItem(
      title: 'YaruTabbedPage',
      builder: (_) => TabbedPagePage(),
      iconData: YaruIcons.tab_new),
  YaruPageItem(
      title: 'Color picker button',
      builder: (_) => ColorPickerPage(),
      iconData: YaruIcons.color_select),
  YaruPageItem(
      title: 'YaruCarousel',
      builder: (_) => YaruPage(children: [
            YaruCarousel(
              fit: BoxFit.fitHeight,
              images: kIsWeb
                  ? [
                      AssetImage('assets/ubuntuhero.jpg'),
                      AssetImage('assets/ubuntuhero.jpg'),
                      AssetImage('assets/ubuntuhero.jpg'),
                    ]
                  : [
                      FileImage(File('assets/ubuntuhero.jpg')),
                      FileImage(File('assets/ubuntuhero.jpg')),
                      FileImage(File('assets/ubuntuhero.jpg')),
                    ],
              height: 400,
            )
          ]),
      iconData: YaruIcons.refresh)
];