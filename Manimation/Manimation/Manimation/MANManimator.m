//
//  MANManimator.m
//  Manimation
//
//  Created by HiusonZ on 2018/3/25.
//  Copyright © 2018年 HiusonZ. All rights reserved.
//

#import "MANManimator.h"
#import <QuartzCore/QuartzCore.h>

@interface MANManimator ()

@end

@implementation MANManimator

- (instancetype)init {

    self = [super init];
    if (self) {
        self.animation = [[CABasicAnimation alloc] init];
    }
    return self;
}

- (MANManimator * (^)(id attr))fromValue {
    
    return ^id(id fromValue) {
        self.animation.fromValue = fromValue;
        return self;
    };
}

- (MANManimator * (^)(id attr))toValue {
    
    return ^id(id toValue) {
        self.animation.toValue = toValue;
        return self;
    };
}

- (MANManimator * (^)(id attr))byValue {
    
    return ^id(id byValue) {
        self.animation.byValue = byValue;
        return self;
    };
}

- (MANManimator * (^)(CFTimeInterval attr))duration {
    
    return ^id(CFTimeInterval duration) {
        self.animation.duration = duration;
        return self;
    };
}

- (MANManimator * (^)(float attr))repeatCount {
    
    return ^id(float repeatCount) {
        self.animation.repeatCount = repeatCount;
        return self;
    };
}

@end
