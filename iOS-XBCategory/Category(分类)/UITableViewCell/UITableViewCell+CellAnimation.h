//
//  UITableViewCell+CellAnimation.h
//  BXYTool
//
//  Created by saifing on 16/8/26.
//  Copyright © 2016年 saifing. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITableViewCell (CellAnimation)

/**
 *  延伸动画
 */
- (void) extendAnimation;

/**
 *  百叶窗动画
 */
- (void) shutterAnimation;

/**
 *  渐变动画
 */
- (void) graduatedAnimation;

@end
