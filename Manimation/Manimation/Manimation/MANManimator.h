//
//  MANManimator.h
//  Manimation
//
//  Created by HiusonZ on 2018/3/25.
//  Copyright © 2018年 HiusonZ. All rights reserved.
//

#import <Foundation/Foundation.h>

@class CABasicAnimation;

@interface MANManimator : NSObject

@property (nonatomic, strong) CABasicAnimation *animation;

- (MANManimator * (^)(id attr))fromValue;
- (MANManimator * (^)(id attr))toValue;
- (MANManimator * (^)(id attr))byValue;
- (MANManimator * (^)(CFTimeInterval attr))duration;
- (MANManimator * (^)(float attr))repeatCount;

@end
