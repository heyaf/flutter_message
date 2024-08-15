import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('HomeView'),
          centerTitle: true,
        ),
        body: Column(
          children: [
            homebanner(),
            Expanded(
              child: ListView.builder(
                itemCount: 100,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    title: Text("$index行"),
                  );
                },
              ),
            ),
          ],
        ));
  }
}

const images = [
  "http://gips2.baidu.com/it/u=195724436,3554684702&fm=3028&app=3028&f=JPEG&fmt=auto?w=1280&h=960",
  "http://gips2.baidu.com/it/u=3944689179,983354166&fm=3028&app=3028&f=JPEG&fmt=auto?w=1024&h=1024",
  "http://gips1.baidu.com/it/u=2205169440,1005663887&fm=3028&app=3028&f=JPEG&fmt=auto?w=1024&h=1024"
];
Widget homebanner() {
  return SizedBox(
    width: ScreenUtil().setWidth(1080),
    height: ScreenUtil().setHeight(200),
    child: Swiper(
      itemBuilder: (context, index) {
        final image = images[index];
        return Image.network(
          image,
          fit: BoxFit.fill,
        );
      },
      indicatorLayout: PageIndicatorLayout.COLOR,
      autoplay: true,
      itemCount: images.length,
      pagination: const SwiperPagination(
        alignment: Alignment.bottomRight, // 设置计数点居右下角
        margin: EdgeInsets.all(10.0), // 可以通过设置边距来微调位置
        builder: DotSwiperPaginationBuilder(
          space: 10.0, // 设置计数点间距为 10
          activeSize: 15.0, // 活动点的大小
          size: 10.0, // 非活动点的大小
        ),
      ),
      // control: const SwiperControl(),
    ),
  );
}
