import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "个人名片",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("profile_card个人名片"),
        ),
        backgroundColor: Colors.grey[200],
        body: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: Container(
              //卡片容器：圆角、阴影、白色背景
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 8,
                    offset: Offset(0, 2),
                  )
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //头像 + Stack右下角绿色在线徽标
                  Stack(
                    children: [
                      const CircleAvatar(radius: 40),
                      Positioned(
                        right: 2,
                        bottom: 2,
                        child: Container(
                          width: 14,
                          height: 14,
                          decoration: const BoxDecoration(
                            color: Colors.green,
                            shape: BoxShape.circle,
                            border: Border.fromBorderSide(BorderSide(color: Colors.white, width: 2)),
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 12),
                  //姓名签名
                  const Text(
                    "张三",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    "个人签名描述",
                    style: TextStyle(color: Colors.grey),
                  ),
                  const SizedBox(height: 16),
                  //统计行
                  Row(
                    children: [
                      Expanded(child: Column(children: const [Text("100"), Text("作品")])),
                      Expanded(child: Column(children: const [Text("200"), Text("关注")])),
                      Expanded(child: Column(children: const [Text("300"), Text("粉丝")])),
                    ],
                  ),
                  const SizedBox(height: 16),
                  //标签Wrap
                  Wrap(
                    spacing: 8,
                    children: const [
                      Chip(label: Text("Flutter")),
                      Chip(label: Text("Dart")),
                      Chip(label: Text("前端")),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}