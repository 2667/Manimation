//
//  ViewController.m
//  Manimation
//
//  Created by HiusonZ on 2018/3/24.
//  Copyright © 2018年 HiusonZ. All rights reserved.
//

#import "ViewController.h"

#import "Manimation/Manimation.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    CALayer *layer = [CALayer layer];
    [layer setFrame:CGRectMake(100, 100, 200, 200)];
    layer.backgroundColor = [UIColor redColor].CGColor;
    [self.view.layer addSublayer:layer];
    [layer man_makeAnimation:^(MANAnimationMaker *make) {
        make.keyPath(@"backgroundColor").toValue((__bridge id)([UIColor blueColor].CGColor)).duration(5);
    }];
//    [self performSelector:@selector(changeColor:) withObject:layer afterDelay:1];
}

- (void)changeColor:(CALayer *)layer {
    
    layer.backgroundColor = [UIColor blueColor].CGColor;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
