//
//  KKViewController.m
//  KKCategories
//
//  Created by Deju Liu on 11/11/2016.
//  Copyright (c) 2016 Deju Liu. All rights reserved.
//

#import "KKViewController.h"
#import "KKCategories.h"

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
//        UIImage *img = [UIImage imageNamed:@"complete"];
//        CGSize size = [img size];
//        UIImageView *imgView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, size.width, size.height)];
//        imgView.image = img;
//        [self.view addSubview:imgView];
//        
//        CGSize newSize = CGSizeMake(size.width*1.2, size.height*1.2);
//        UIImage *newImg = [img jk_scaleToSize:newSize];
//        CGSize resize = [newImg size];
//        UIImageView *imgView1 = [[UIImageView alloc] initWithFrame:CGRectMake(0, 200, resize.width, resize.height)];
//        imgView1.image = newImg;
//        [self.view addSubview:imgView1];
        
        UIImage *image = [UIImage imageNamed:@"WechatIMG1.jpeg"];
        [image jk_compressToMaxDataSizeKBytes:610 complation:^(NSData *data, double rate, NSInteger execCount) {
            float kb = data.length/1024.0f;
            NSLog(@"");
        }];
    }];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
