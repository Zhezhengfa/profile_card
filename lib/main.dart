import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "作业六自主实践",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        appBar: AppBar(title: const Text("profile_card 自主实践")),
        backgroundColor: Colors.grey[200],
        body: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // ========== 原有profile_card个人名片（任务4：卡片1） ==========
                Container(
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
                      //任务3场景①头像徽标
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
                                border: Border.fromBorderSide(
                                    BorderSide(color: Colors.white, width: 2)),
                              ),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 12),
                      const Text("张三",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                      const Text("个人签名描述",
                          style: TextStyle(color: Colors.grey)),
                      const SizedBox(height: 16),
                      Row(
                        children: [
                          Expanded(
                              child: Column(
                                  children: const [Text("100"), Text("作品")])),
                          Expanded(
                              child: Column(
                                  children: const [Text("200"), Text("关注")])),
                          Expanded(
                              child: Column(
                                  children: const [Text("300"), Text("粉丝")])),
                        ],
                      ),
                      const SizedBox(height: 16),
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

                const SizedBox(height: 30),
                const Divider(),
                const Text("任务1：六种对齐场景",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                const SizedBox(height: 10),

                // --------场景1 Row mainAxisAlignment:start crossAxisAlignment:center--------
                const Text("① Row mainAxisAlignment:start, crossAxisAlignment:center"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Text("A"),
                    SizedBox(width: 20),
                    Text("B"),
                    SizedBox(width: 20),
                    Text("C"),
                  ],
                ),
                const SizedBox(height: 12),

                // --------场景2 Row mainAxisAlignment:center crossAxisAlignment:center--------
                const Text("② Row mainAxisAlignment:center, crossAxisAlignment:center"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Text("A"),
                    SizedBox(width: 20),
                    Text("B"),
                    SizedBox(width: 20),
                    Text("C"),
                  ],
                ),
                const SizedBox(height: 12),

                // --------场景3 Row mainAxisAlignment:spaceBetween crossAxisAlignment:center--------
                const Text("③ Row mainAxisAlignment:spaceBetween, crossAxisAlignment:center"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [Text("A"), Text("B"), Text("C")],
                ),
                const SizedBox(height: 12),

                // --------场景4 Column mainAxisAlignment:center crossAxisAlignment:start--------
                const Text("④ Column mainAxisAlignment:center, crossAxisAlignment:start"),
                SizedBox(
                  height: 100,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [Text("X"), Text("Y")],
                  ),
                ),

                // --------场景5 Column mainAxisAlignment:spaceAround crossAxisAlignment:center--------
                const Text("⑤ Column mainAxisAlignment:spaceAround, crossAxisAlignment:center"),
                SizedBox(
                  height: 100,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [Text("X"), Text("Y")],
                  ),
                ),

                // --------场景6 Column mainAxisAlignment:spaceEvenly crossAxisAlignment:end--------
                const Text("⑥ Column mainAxisAlignment:spaceEvenly, crossAxisAlignment:end"),
                SizedBox(
                  height: 100,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: const [Text("X"), Text("Y")],
                  ),
                ),

                const SizedBox(height: 30),
                const Divider(),
                const Text("任务2：弹性分配实验 2:1:1",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                const SizedBox(height: 10),

                //2:1:1正常
                const Text("2:1:1正常状态"),
                Row(
                  children: [
                    Expanded(
                        flex: 2,
                        child: Container(
                            height: 80,
                            color: Colors.red[200],
                            child: const Text("flex=2"))),
                    Expanded(
                        flex: 1,
                        child: Container(
                            height: 80,
                            color: Colors.green[200],
                            child: const Text("flex=1"))),
                    Expanded(
                        flex: 1,
                        child: Container(
                            height: 80,
                            color: Colors.blue[200],
                            child: const Text("flex=1"))),
                  ],
                ),
                const SizedBox(height: 10),
                const Text("2:1:1第一栏内容超长"),
                Row(
                  children: [
                    Expanded(
                        flex: 2,
                        child: Container(
                            height: 80,
                            color: Colors.red[200],
                            child: const Text(
                                "这一栏文字内容非常非常非常非常长测试换行效果"))),
                    Expanded(
                        flex: 1,
                        child: Container(
                            height: 80,
                            color: Colors.green[200],
                            child: const Text("flex=1"))),
                    Expanded(
                        flex: 1,
                        child: Container(
                            height: 80,
                            color: Colors.blue[200],
                            child: const Text("flex=1"))),
                  ],
                ),

                const SizedBox(height: 30),
                const Divider(),
                const Text("任务3：层叠角标第二个场景：图片浮层文字",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                const SizedBox(height: 10),
                SizedBox(
                  width: 220,
                  height: 140,
                  child: Stack(
                    children: [
                      Container(color: Colors.blueGrey),
                      Positioned(
                        left: 10,
                        bottom: 10,
                        child: Container(
                          color: Colors.black45,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 4),
                          child: const Text("图片浮层标题",
                              style: TextStyle(color: Colors.white)),
                        ),
                      )
                    ],
                  ),
                ),

                const SizedBox(height: 30),
                const Divider(),
                const Text("任务4：第二张卡片（至少两处卡片）",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                const SizedBox(height: 10),
                //任务4：卡片2
                Container(
                  padding: const EdgeInsets.all(14),
                  margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.black12,
                          blurRadius: 10,
                          offset: Offset(0, 3))
                    ],
                  ),
                  child: const Text("第二张测试卡片，圆角、阴影、内外留白margin+padding"),
                ),
                const SizedBox(height: 40),
              ],
            ),
          ),
        ),
      ),
    );
  }
}