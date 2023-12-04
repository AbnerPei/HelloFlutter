import 'package:flutter/material.dart';

class TextDemo extends StatelessWidget {
  const TextDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return SimpleTextDemo();
    return RichTextDemo();
  }
}

class SimpleTextDemo extends StatelessWidget {
  const SimpleTextDemo({Key? key}) : super(key: key);

  // 定义成变量
  final TextStyle _textStyle = const TextStyle(
      fontSize: 20.0
  );

  // lector: 讲师
  final String _lector = "Hank";
  final String _title = "Flutter高级进阶";

  @override
  Widget build(BuildContext context) {
    return Text(
      '$_lector -- 《$_title》\n本套课程将针对iOS开发者快速上手Flutter技术.本课程设计贯穿整个实战项目,通过项目需求快速学习各项技术.同时在项目实战过程中会通过带着大家探索相应的原理性知识，完成从Flutter 入门到进阶的转变',
      textAlign: TextAlign.center,
      style: _textStyle,
      // 最大行数
      maxLines: 3,
    );
  }
}

class RichTextDemo extends StatelessWidget {
  const RichTextDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: '《Flutter高级进阶》',
        style: TextStyle(
          fontSize: 30,
          color: Colors.black
        ),
        children: [
          TextSpan(
            text: '--',
            style: TextStyle(fontSize: 15.0, color: Colors.blue)
          ),
          TextSpan(
            text: ' Hank',
            style: TextStyle(fontSize: 20.0, color: Colors.purple)
          )
        ]
      )
    );
  }
}

