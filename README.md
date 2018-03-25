# Manimation
一个致敬Masonry的核心动画封装库

``` objective-c
[layer man_makeAnimation:^(MANAnimationMaker *make) {
    make.keyPath(@"backgroundColor").toValue((__bridge id)([UIColor blueColor].CGColor)).duration(5);
}];
```

####  18.03.25

搭建了初步的框架

Todo:

- 寻找一种优雅的添加时间参数的方式，一提供对多个动画组成AnimationGroup的支持。
- 支持ARC参数至CGRef参数的简易转换方式，缩短单行代码字符量。

可能Todo:

- 将为CALayer的KeyPath拓展为实际属性显示
- 为贝塞尔曲线提供简易生成方法
- 添加关键帧动画的支持





