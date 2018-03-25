//
//  MANAnimationMaker.m
//  Manimation
//
//  Created by HiusonZ on 2018/3/25.
//  Copyright © 2018年 HiusonZ. All rights reserved.
//

#import "MANAnimationMaker.h"
#import "MANManimator.h"

#import <QuartzCore/QuartzCore.h>

@interface MANAnimationMaker ()

@property (nonatomic, strong) CALayer *layer;
@property (nonatomic, strong) NSMutableArray <MANManimator *> *animators;

@end

@implementation MANAnimationMaker

- (instancetype)initWithLayer:(CALayer *)layer {
    
    self = [super init];
    if (self) {
        self.layer = layer;
        self.animators = [NSMutableArray array];
    }
    return self;
}

- (MANManimator * (^)(NSString *attr))keyPath {
    
    return ^MANManimator *(NSString *attr) {
        MANManimator *animator = [[MANManimator alloc] init];
        animator.animation.keyPath = attr;
        [self.animators addObject:animator];
        return animator;
    };
}

- (void)install {
    
//    CAAnimationGroup *group = [[CAAnimationGroup alloc] init];
//    group.animations = [self.animators valueForKeyPath:@"animation"];
//    [self.layer addAnimation:group forKey:@"Manimation"];
    
    if (self.animators.count == 1) {
        [self.layer addAnimation:self.animators.firstObject.animation forKey:@"Manimation"];
    }
}

@end
