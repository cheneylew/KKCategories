//
//  KKViewController.m
//  KKCategories
//
//  Created by Deju Liu on 11/11/2016.
//  Copyright (c) 2016 Deju Liu. All rights reserved.
//

#import "KKViewController.h"

@interface KKViewController ()

@end

@implementation KKViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeSystem];
    [btn setTitle:@"Click" forState:UIControlStateNormal];
    btn.frame = CGRectMake(0, 100, 100, 40);
    btn.backgroundColor = [UIColor redColor];
    [self.view addSubview:btn];
    
    [btn jk_addActionHandler:^(NSInteger tag) {
        [btn jk_addCenterMotionEffectsXYWithOffset:10];
    }];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
