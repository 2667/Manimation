//
//  MANAnimationMaker.h
//  Manimation
//
//  Created by HiusonZ on 2018/3/25.
//  Copyright © 2018年 HiusonZ. All rights reserved.
//

#import <Foundation/Foundation.h>

@class MANManimator;
@class CALayer;

@interface MANAnimationMaker : NSObject

- (instancetype)initWithLayer:(CALayer *)layer;
- (void)install;

/*  CAPropertyAnimation.keyPath属性类似KVC操作，使用字符串获取CALayer的相关属性
 *  todo:   希望能够将CALayer(以及专用图层？)的各项可动画属性提取出成为固定的
 */
- (MANManimator * (^)(NSString *attr))keyPath;

@end
