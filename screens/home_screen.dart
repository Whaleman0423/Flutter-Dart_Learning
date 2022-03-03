// 引用 flutter 的核心套件
import 'package:csp_cut/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatefulWidget {
  // 主要首頁
  @override
  State createState() {
    // 返回狀態
    return _HomeScreen();
  }
}

class _HomeScreen extends State<HomeScreen> {
  // 每次畫面渲染所執行的函數
  @override
  Widget build(BuildContext context) {
    // 初始化，使 UI 在不同尺寸的螢幕上都能顯示 OK
    ScreenUtil.init(
      BoxConstraints(
        maxWidth: MediaQuery.of(context).size.width,
        maxHeight: MediaQuery.of(context).size.height,
      ),
      // 設置初始稿的寬度與高度
      designSize: Size(1024, 800),
      context: context,
      minTextAdapt: true,
      orientation: Orientation.portrait,
    );
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
          alignment: Alignment.center,
          child: Column(
            children: [
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // 放上層的按鈕：AWS-中文、AWS、GCP、Azure、雲端活動
                  ],
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Column(
                          // 放新聞新知
                          ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          // 放廣告
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          )),
    ));
  }
}
