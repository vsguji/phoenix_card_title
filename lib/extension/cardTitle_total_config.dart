/*
 * @Author: lipeng 1162423147@qq.com
 * @Date: 2023-09-24 20:44:26
 * @LastEditors: lipeng 1162423147@qq.com
 * @LastEditTime: 2023-10-11 10:11:48
 * @FilePath: /phoenix_card_title/lib/extension/cardTitle_total_config.dart
 * @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
 */
import 'package:phoenix_base/phoenix.dart';

import '../config/card_title_config.dart';
import 'cardTitle_default_config_utils.dart';

class CardTitleTotalConfig extends BaseTotalConfig {
  CardTitleTotalConfig({CardTitleConfig? cardTitleConfig})
      : _cardTitleConfig = cardTitleConfig;

  CardTitleConfig? _cardTitleConfig;

  CardTitleConfig get cardTitleConfig =>
      _cardTitleConfig ?? BaseCardTitleConfigUtils.defaultCardTitleConfig;

  @override
  void initThemeConfig(String configId) {
    super.initThemeConfig(configId);
    _cardTitleConfig ??= CardTitleConfig();
    cardTitleConfig.initThemeConfig(
      configId,
      currentLevelCommonConfig: commonConfig,
    );
  }
}

extension BaseCardTitleTotalConfig on BaseTotalConfig {
  static CardTitleConfig? _cardTitleConfig;
  CardTitleConfig get cardTitleConfig =>
      _cardTitleConfig ?? BaseCardTitleConfigUtils.defaultCardTitleConfig;
  set cardTitleTotalConfig(CardTitleTotalConfig config) {
    _cardTitleConfig = config.cardTitleConfig;
  }
}
