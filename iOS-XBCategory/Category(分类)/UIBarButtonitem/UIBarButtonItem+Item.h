//
//  UIBarButtonItem+Item.h
//  BXYTool
//
//  Created by saifing on 16/8/26.
//  Copyright © 2016年 saifing. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (Item)

/**
 *  设置item的属性
 *
 *  @param image         默认图片
 *  @param highImage     高亮图片
 *  @param target        目标
 *  @param action        点击方法
 *  @param controlEvents 控制事件
 *
 *  @return 新的item
 */
+ (UIBarButtonItem *)barButtonItemWithImage:(UIImage *)image highImage:(UIImage *)highImage target:(id)target action:(SEL)action forControlEvents:(UIControlEvents)controlEvents;

@end
