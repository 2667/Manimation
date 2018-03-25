//
//  CALayer+MANAdditions.h
//  Manimation
//
//  Created by HiusonZ on 2018/3/25.
//  Copyright © 2018年 HiusonZ. All rights reserved.
//

#import <QuartzCore/QuartzCore.h>

@class MANAnimationMaker;
@interface CALayer (MANAdditions)

- (void)man_makeAnimation:(void(CF_NOESCAPE ^)(MANAnimationMaker *make))block;

@end
