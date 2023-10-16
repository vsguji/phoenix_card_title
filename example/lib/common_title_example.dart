import 'package:flutter/material.dart';
import 'package:phoenix_card/phoenix_card.dart';
import 'package:phoenix_card_title/phoenix_card_title.dart';
import 'package:phoenix_navbar/phoenix_navbar.dart';
import 'package:phoenix_rating/phoenix_rating.dart';
import 'package:phoenix_tag/phoenix_tag.dart';
import 'package:phoenix_toast/phoenix_toast.dart';

class CommonTitleExample extends StatefulWidget {
  @override
  _CommonTitleExampleState createState() => _CommonTitleExampleState();
}

class _CommonTitleExampleState extends State<CommonTitleExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PhoenixAppBar(
        title: '普通标题',
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text(
              '规则',
              style: TextStyle(
                  color: Color(0xFF222222),
                  fontSize: 28,
                  fontWeight: FontWeight.bold),
            ),
            const BubbleText(
              maxLines: 4,
              text: '标题可以折行展示，标题最右侧的widget 需要展示出来\n'
                  '标题底部的detail 信息展示的长度是 折行的长度，只显示2行\n'
                  '标题的文案和sub需要流式布局\n'
                  'accessoryWidget的高度就是25，如果传入的widget过大会显示不全\n'
                  '上下的间距是16',
            ),
            const SizedBox(
              height: 50,
            ),
            const Text(
              '正常案例',
              style: TextStyle(
                color: Color(0xFF222222),
                fontSize: 28,
              ),
            ),
            CommonCardTitle(
              title: '标题',
              accessoryText: '辅助文本',
              onTap: () {
                PhoenixToast.show('BrnPlainCardTitle is clicked', context);
              },
            ),
            const SizedBox(
              height: 50,
            ),
            const Text(
              '正常案例',
              style: TextStyle(
                color: Color(0xFF222222),
                fontSize: 28,
              ),
            ),
            CommonCardTitle(
              title: '非箭头Title',
              subTitleWidget: const RatingStar(
                count: 2,
                selectedCount: 2,
              ),
              accessoryWidget: StateTag(tagText: '状态标签'),
              detailTextString: '副标题副标题副标题',
              onTap: () {
                PhoenixToast.show('BrnPlainCardTitle is clicked', context);
              },
            ),
            const SizedBox(
              height: 50,
            ),
            const Text(
              '正常案例',
              style: TextStyle(
                color: Color(0xFF222222),
                fontSize: 28,
              ),
            ),
            CommonCardTitle(
              title: '非箭头Title',
              //标题右侧widget
              subTitleWidget: const Icon(
                Icons.content_copy,
                size: 16,
                color: Colors.blue,
              ),
              accessoryText: '辅助功能',
              accessoryWidget: const Icon(
                Icons.radio_button_checked,
                size: 16,
                color: Colors.blue,
              ),
              detailTextString: '字房产证地址与楼盘字房产证地址与楼盘字',
              //整个widget的点击
              onTap: () {
                PhoenixToast.show('BrnCommonCardTitle is clicked', context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
