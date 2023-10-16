import 'package:flutter/material.dart';
import 'package:phoenix_card/phoenix_card.dart';
import 'package:phoenix_card_title/phoenix_card_title.dart';
import 'package:phoenix_line/phoenix_line.dart';
import 'package:phoenix_navbar/phoenix_navbar.dart';
import 'package:phoenix_tag/phoenix_tag.dart';
import 'package:phoenix_toast/phoenix_toast.dart';

class ActionTitleExample extends StatefulWidget {
  @override
  _ActionTitleExampleState createState() => _ActionTitleExampleState();
}

class _ActionTitleExampleState extends State<ActionTitleExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PhoenixAppBar(
        title: '箭头标题',
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
              text: '标题不可以折行，当辅助widget和subwidget过多时，标题...截断\n'
                  '展示出sub和ac\n'
                  '标题字体为18',
            ),
            const Text(
              '正常案例',
              style: TextStyle(
                color: Color(0xFF222222),
                fontSize: 28,
              ),
            ),
            ActionCardTitle(
              title: '表头',
              onTap: () {
                PhoenixToast.show('BrnActionCardTitle is clicked', context);
              },
            ),
            const Line(
              height: 2,
              color: Colors.black12,
            ),
            const Text(
              '正常案例（自定义副标题Widget）',
              style: TextStyle(
                color: Color(0xFF222222),
                fontSize: 28,
              ),
            ),
            ActionCardTitle(
              title: '非箭头',
              //标题右侧widget
              subTitleWidget: const Row(
                textBaseline: TextBaseline.ideographic,
                children: <Widget>[
                  Text(
                    '副标题',
                    style: TextStyle(color: Colors.red),
                  ),
                  StateTag(tagText: '状态标签'),
                ],
              ),
              //整个widget的点击
              onTap: () {
                PhoenixToast.show('BrnPlainCardTitle is clicked', context);
              },
            ),
            const Line(
              height: 2,
              color: Colors.black12,
            ),
            const Text(
              '正常案例',
              style: TextStyle(
                color: Color(0xFF222222),
                fontSize: 28,
              ),
            ),
            ActionCardTitle(
              title: '非箭头',
              //标题右侧widget
              subTitle: "副标题",
              //整个widget的点击
              accessoryText: "点击标题",
              onTap: () {
                PhoenixToast.show('BrnPlainCardTitle is clicked', context);
              },
            ),
            const Line(
              height: 2,
              color: Colors.black12,
            ),
            const Text(
              '正常案例',
              style: TextStyle(
                color: Color(0xFF222222),
                fontSize: 28,
              ),
            ),
            ActionCardTitle(
              title: '标题特别长特别长特别长特别长特别长特别长特别长特别长',
              //标题右侧widget
              subTitle: "副标题",
              //整个widget的点击
              accessoryText: "点击标题",
              onTap: () {
                PhoenixToast.show('BrnPlainCardTitle is clicked', context);
              },
            ),
            const Line(
              height: 2,
              color: Colors.black12,
            ),
            const Text(
              '异常案例：title特别长',
              style: TextStyle(
                color: Color(0xFF222222),
                fontSize: 28,
              ),
            ),
            ActionCardTitle(
              title: '标题特别长特别长特别长特别长特别长特别长特别长特别长',
              //标题右侧widget
//              subTitle: "副标题",
              //整个widget的点击
              accessoryText: "点击标题",
              onTap: () {
                PhoenixToast.show('BrnActionCardTitle is clicked', context);
              },
            ),
            const Line(
              height: 2,
              color: Colors.black12,
            ),
            const Text(
              '异常案例：副标题特别长',
              style: TextStyle(
                color: Color(0xFF222222),
                fontSize: 28,
              ),
            ),
            ActionCardTitle(
              title: '标题特别',
              //标题右侧widget
              subTitle: "副标题也特别长特别长长特别长特别长特别长特别长",
              //整个widget的点击
              accessoryText: "点击标题",
              onTap: () {
                PhoenixToast.show('BrnActionCardTitle is clicked', context);
              },
            ),
            const Line(
              height: 2,
              color: Colors.black12,
            ),
            const Text(
              '异常案例：跳转标题特别长',
              style: TextStyle(
                color: Color(0xFF222222),
                fontSize: 28,
              ),
            ),
            ActionCardTitle(
              title: '标题特别',
              //标题右侧widget
              subTitle: "副标题",
              //整个widget的点击
              accessoryText: "点击标题特别长特别长特别长特别长特别长特别长",
              onTap: () {
                PhoenixToast.show('BrnActionCardTitle is clicked', context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
