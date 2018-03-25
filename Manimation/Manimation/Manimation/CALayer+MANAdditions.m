//
//  CALayer+MANAdditions.m
//  Manimation
//
//  Created by HiusonZ on 2018/3/25.
//  Copyright © 2018年 HiusonZ. All rights reserved.
//

#import "CALayer+MANAdditions.h"
#import "MANAnimationMaker.h"

@implementation CALayer (MANAdditions)

- (void)man_makeAnimation:(void (^)(MANAnimationMaker *))block {
    
    MANAnimationMaker *maker = [[MANAnimationMaker alloc] initWithLayer:self];
    block(maker);
    [maker install];
}

@end
