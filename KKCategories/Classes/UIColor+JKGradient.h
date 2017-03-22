//
//  UIColor+Gradient.h
//  JKCategories (https://github.com/shaojiankui/JKCategories)
//
//  Created by Jakey on 14/12/15.
//  Copyright (c) 2014年 www.skyfox.org. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (JKGradient)
/**
 *  @brief  上下渐变颜色
 *
 *  @param c1     开始颜色
 *  @param c2     结束颜色
 *  @param height 渐变高度
 *
 *  @return 渐变颜色
 */
+ (UIColor*)jk_gradientFromColor:(UIColor*)c1 toColor:(UIColor*)c2 withHeight:(int)height;

/**
 左右颜色渐变

 @param c1 <#c1 description#>
 @param c2 <#c2 description#>
 @param width <#width description#>
 @return <#return value description#>
 */
+ (UIColor*)jk_gradientFromColor:(UIColor*)c1 toColor:(UIColor*)c2 withWidth:(int)width;
@end
