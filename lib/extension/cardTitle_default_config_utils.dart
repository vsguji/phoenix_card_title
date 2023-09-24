/*
 * @Author: lipeng 1162423147@qq.com
 * @Date: 2023-09-24 20:41:39
 * @LastEditors: lipeng 1162423147@qq.com
 * @LastEditTime: 2023-09-24 20:44:05
 * @FilePath: /phoenix_card_title/lib/extension/cardTitle_default_config_utils.dart
 * @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
 */
import 'package:flutter/material.dart';
import 'package:phoenix_base/phoenix.dart';

import '../config/card_title_config.dart';

/// 卡片标题配置
extension BaseCardTitleConfigUtils on BaseDefaultConfigUtils {
  ///
  static CardTitleConfig defaultCardTitleConfig = CardTitleConfig(
    titleWithHeightTextStyle: BaseTextStyle(
      color: BaseDefaultConfigUtils.defaultCommonConfig.colorTextBase,
      fontSize: BaseDefaultConfigUtils.defaultCommonConfig.fontSizeHead,
      height: 25.0 / 18.0,
      fontWeight: FontWeight.w600,
    ),
    titleTextStyle: BaseTextStyle(
      color: BaseDefaultConfigUtils.defaultCommonConfig.colorTextBase,
      fontSize: BaseDefaultConfigUtils.defaultCommonConfig.fontSizeHead,
      fontWeight: FontWeight.w600,
    ),
    subtitleTextStyle: BaseTextStyle(
      color: BaseDefaultConfigUtils.defaultCommonConfig.colorTextSecondary,
      fontSize: BaseDefaultConfigUtils.defaultCommonConfig.fontSizeBase,
    ),
    detailTextStyle: BaseTextStyle(
      color: BaseDefaultConfigUtils.defaultCommonConfig.colorTextBase,
      fontSize: BaseDefaultConfigUtils.defaultCommonConfig.fontSizeBase,
    ),
    accessoryTextStyle: BaseTextStyle(
      color: BaseDefaultConfigUtils.defaultCommonConfig.colorTextSecondary,
      fontSize: BaseDefaultConfigUtils.defaultCommonConfig.fontSizeBase,
    ),
    cardTitlePadding: EdgeInsets.only(
      top: BaseDefaultConfigUtils.defaultCommonConfig.vSpacingXl,
      bottom: BaseDefaultConfigUtils.defaultCommonConfig.vSpacingMd,
    ),
    alignment: PlaceholderAlignment.middle,
    cardBackgroundColor: BaseDefaultConfigUtils.defaultCommonConfig.fillBase,
  );
}
