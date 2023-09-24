import 'package:flutter/material.dart';
import 'package:phoenix_base/phoenix.dart';
import 'package:phoenix_card_title/extension/cardTitle_total_config.dart';

import '../extension/cardTitle_default_config_utils.dart';

/// 卡片标题 配置类
class CardTitleConfig extends BaseConfig {
  CardTitleConfig({
    BaseTextStyle? titleWithHeightTextStyle,
    BaseTextStyle? detailTextStyle,
    BaseTextStyle? accessoryTextStyle,
    EdgeInsets? cardTitlePadding,
    BaseTextStyle? titleTextStyle,
    BaseTextStyle? subtitleTextStyle,
    PlaceholderAlignment? alignment,
    Color? cardBackgroundColor,
    String configId = GLOBAL_CONFIG_ID,
  })  : _titleWithHeightTextStyle = titleWithHeightTextStyle,
        _detailTextStyle = detailTextStyle,
        _accessoryTextStyle = accessoryTextStyle,
        _cardTitlePadding = cardTitlePadding,
        _titleTextStyle = titleTextStyle,
        _subtitleTextStyle = subtitleTextStyle,
        _alignment = alignment,
        _cardBackgroundColor = cardBackgroundColor,
        super(configId: configId);

  /// 标题外边距间距
  ///
  /// EdgeInsets.only(
  ///   top: [BrnCommonConfig.vSpacingXl],
  ///   bottom: [BrnCommonConfig.vSpacingMd],
  /// )
  EdgeInsets? _cardTitlePadding;

  EdgeInsets get cardTitlePadding =>
      _cardTitlePadding ??
      BaseCardTitleConfigUtils.defaultCardTitleConfig.cardTitlePadding;

  /// 标题文本样式
  ///
  /// BaseTextStyle(
  ///   color: [BrnCommonConfig.colorTextBase],
  ///   fontSize: [BrnCommonConfig.fontSizeHead],
  ///   fontWeight: FontWeight.w600,
  ///   height: 25 / 18,
  /// )
  BaseTextStyle? _titleWithHeightTextStyle;

  BaseTextStyle get titleWithHeightTextStyle =>
      _titleWithHeightTextStyle ??
      BaseCardTitleConfigUtils.defaultCardTitleConfig.titleWithHeightTextStyle;

  /// 标题文本样式
  ///
  /// BaseTextStyle(
  ///   color: [BrnCommonConfig.colorTextBase],
  ///   fontSize: [BrnCommonConfig.fontSizeHead],
  ///   fontWeight: FontWeight.w600,
  /// )
  BaseTextStyle? _titleTextStyle;

  BaseTextStyle get titleTextStyle =>
      _titleTextStyle ??
      BaseCardTitleConfigUtils.defaultCardTitleConfig.titleTextStyle;

  /// 标题右边的副标题文本样式
  ///
  /// BaseTextStyle(
  ///   color: [BrnCommonConfig.colorTextSecondary],
  ///   fontSize: [BrnCommonConfig.fontSizeBase],
  /// )
  BaseTextStyle? _subtitleTextStyle;

  BaseTextStyle get subtitleTextStyle =>
      _subtitleTextStyle ??
      BaseCardTitleConfigUtils.defaultCardTitleConfig.subtitleTextStyle;

  /// 详情文本样式
  ///
  /// BaseTextStyle(
  ///   color: [BrnCommonConfig.colorTextBase],
  ///   fontSize: [BrnCommonConfig.fontSizeBase],
  /// )
  BaseTextStyle? _detailTextStyle;

  BaseTextStyle get detailTextStyle =>
      _detailTextStyle ??
      BaseCardTitleConfigUtils.defaultCardTitleConfig.detailTextStyle;

  /// 辅助文本样式
  ///
  /// BaseTextStyle(
  ///   color: [BrnCommonConfig.colorTextSecondary],
  ///   fontSize: [BrnCommonConfig.fontSizeBase],
  /// )
  BaseTextStyle? _accessoryTextStyle;

  BaseTextStyle get accessoryTextStyle =>
      _accessoryTextStyle ??
      BaseCardTitleConfigUtils.defaultCardTitleConfig.accessoryTextStyle;

  /// 对齐方式
  /// 默认为 [PlaceholderAlignment.middle]
  PlaceholderAlignment? _alignment;

  PlaceholderAlignment get alignment =>
      _alignment ?? BaseCardTitleConfigUtils.defaultCardTitleConfig.alignment;

  /// 卡片背景
  /// 默认为 [BrnCommonConfig.fillBase]
  Color? _cardBackgroundColor;

  Color get cardBackgroundColor =>
      _cardBackgroundColor ??
      BaseCardTitleConfigUtils.defaultCardTitleConfig.cardBackgroundColor;

  /// cardTitleConfig  获取逻辑详见 [BrnThemeConfigurator.getConfig] 方法
  @override
  void initThemeConfig(
    String configId, {
    BaseCommonConfig? currentLevelCommonConfig,
  }) {
    super.initThemeConfig(
      configId,
      currentLevelCommonConfig: currentLevelCommonConfig,
    );

    CardTitleConfig cardTitleConfig =
        BaseThemeConfig.instance.getConfig(configId: configId).cardTitleConfig;

    _cardBackgroundColor ??= commonConfig.fillBase;
    _cardTitlePadding ??= EdgeInsets.only(
      left: cardTitleConfig.cardTitlePadding.left,
      top: commonConfig.vSpacingXl,
      right: cardTitleConfig.cardTitlePadding.right,
      bottom: commonConfig.vSpacingMd,
    );
    _titleWithHeightTextStyle = cardTitleConfig.titleWithHeightTextStyle.merge(
      BaseTextStyle(
        color: commonConfig.colorTextBase,
        fontSize: commonConfig.fontSizeHead,
      ).merge(_titleWithHeightTextStyle),
    );
    _titleTextStyle = cardTitleConfig.titleTextStyle.merge(
      BaseTextStyle(
        color: commonConfig.colorTextBase,
        fontSize: commonConfig.fontSizeHead,
      ).merge(_titleTextStyle),
    );
    _subtitleTextStyle = cardTitleConfig.subtitleTextStyle.merge(
      BaseTextStyle(
        color: commonConfig.colorTextBase,
        fontSize: commonConfig.fontSizeBase,
      ).merge(_subtitleTextStyle),
    );
    _accessoryTextStyle = cardTitleConfig.accessoryTextStyle.merge(
      BaseTextStyle(
        color: commonConfig.colorTextSecondary,
        fontSize: commonConfig.fontSizeHead,
      ).merge(_accessoryTextStyle),
    );
    _detailTextStyle = cardTitleConfig.detailTextStyle.merge(
      BaseTextStyle(
        color: commonConfig.colorTextBase,
        fontSize: commonConfig.fontSizeBase,
      ).merge(_detailTextStyle),
    );
    _alignment ??= cardTitleConfig._alignment;
  }

  CardTitleConfig copyWith({
    EdgeInsets? cardTitlePadding,
    BaseTextStyle? titleWithHeightTextStyle,
    BaseTextStyle? titleTextStyle,
    BaseTextStyle? subtitleTextStyle,
    BaseTextStyle? detailTextStyle,
    BaseTextStyle? accessoryTextStyle,
    PlaceholderAlignment? alignment,
    Color? cardBackgroundColor,
  }) {
    return CardTitleConfig(
      cardTitlePadding: cardTitlePadding ?? _cardTitlePadding,
      titleWithHeightTextStyle:
          titleWithHeightTextStyle ?? _titleWithHeightTextStyle,
      titleTextStyle: titleTextStyle ?? _titleTextStyle,
      subtitleTextStyle: subtitleTextStyle ?? _subtitleTextStyle,
      detailTextStyle: detailTextStyle ?? _detailTextStyle,
      accessoryTextStyle: accessoryTextStyle ?? _accessoryTextStyle,
      alignment: alignment ?? _alignment,
      cardBackgroundColor: cardBackgroundColor ?? _cardBackgroundColor,
    );
  }

  CardTitleConfig merge(CardTitleConfig? other) {
    if (other == null) return this;
    return copyWith(
      cardTitlePadding: other._cardTitlePadding,
      titleWithHeightTextStyle:
          titleWithHeightTextStyle.merge(other._titleWithHeightTextStyle),
      titleTextStyle: titleTextStyle.merge(other._titleTextStyle),
      subtitleTextStyle: subtitleTextStyle.merge(other._subtitleTextStyle),
      detailTextStyle: detailTextStyle.merge(other._detailTextStyle),
      accessoryTextStyle: accessoryTextStyle.merge(other._accessoryTextStyle),
      alignment: other._alignment,
      cardBackgroundColor: other._cardBackgroundColor,
    );
  }
}
