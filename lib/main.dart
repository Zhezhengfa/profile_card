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
        body: const SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // 1.头像
                CircleAvatar(radius: 40),
                SizedBox(height: 12),
                //2.姓名签名
                Text(
                  "张三",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  "个人签名描述",
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(height: 16),
                //3.统计条 Row + Expanded
                Row(
                  children: [
                    Expanded(child: Column(children: [Text("100"), Text("作品")])),
                    Expanded(child: Column(children: [Text("200"), Text("关注")])),
                    Expanded(child: Column(children: [Text("300"), Text("粉丝")])),
                  ],
                ),
                SizedBox(height: 16),
                //4.标签云 Wrap
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
    );
  }
}