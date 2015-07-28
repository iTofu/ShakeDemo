//
//  ViewController.m
//  ShakeDemo
//
//  Created by 刘超 on 15/7/28.
//  Copyright (c) 2015年 Leo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *stateLabel;

@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
}

- (BOOL)canBecomeFirstResponder {
    
    return YES;
}

#pragma mark - 摇动

/**
 *  摇动开始
 */
- (void)motionBegan:(UIEventSubtype)motion withEvent:(UIEvent *)event {
    
    if (motion == UIEventSubtypeMotionShake) {
        
        NSLog(@"开始摇了");
        
        self.stateLabel.text = @"开始摇了";
    }
}

/**
 *  摇动结束
 */
- (void)motionEnded:(UIEventSubtype)motion withEvent:(UIEvent *)event {
    
    NSLog(@"摇动结束");
    
    self.stateLabel.text = @"摇动结束";
}

/**
 *  摇动取消
 */
- (void)motionCancelled:(UIEventSubtype)motion withEvent:(UIEvent *)event {
    
    NSLog(@"摇动取消");
    
    self.stateLabel.text = @"摇动取消";
}

@end
