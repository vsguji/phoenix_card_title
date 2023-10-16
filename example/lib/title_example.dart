import 'package:flutter/material.dart';
import 'package:phoenix_navbar/phoenix_navbar.dart';

import 'action_title_example.dart';
import 'common_title_example.dart';
import 'list_item.dart';
import 'sub_switch_title_example.dart';
import 'switch_title_example.dart';

class TitleExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PhoenixAppBar(
        title: "标题示例",
      ),
      body: ListView(
        children: [
          ListItem(
            title: "普通标题",
            isShowLine: false,
            isSupportTheme: true,
            describe: '标题+辅助widget+底部详细信息',
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (BuildContext context) {
                  return CommonTitleExample();
                },
              ));
            },
          ),
          ListItem(
            title: "箭头标题",
            isSupportTheme: true,
            describe: '带有箭头的标题',
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (BuildContext context) {
                  return ActionTitleExample();
                },
              ));
            },
          ),
          ListItem(
            title: "一级标题",
            describe: '标题下方可切换',
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (BuildContext context) {
                  return SwitchTitleExample();
                },
              ));
            },
          ),
          ListItem(
            title: "二级标题",
            describe: '标题下方可切换',
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (BuildContext context) {
                  return SubSwitchTitleExample();
                },
              ));
            },
          ),
        ],
      ),
    );
  }
}
