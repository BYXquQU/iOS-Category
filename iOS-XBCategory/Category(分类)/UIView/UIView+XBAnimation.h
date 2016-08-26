//
//  UIView+XBAnimation.h
//  BXYTool
//
//  Created by saifing on 16/8/26.
//  Copyright © 2016年 saifing. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (XBAnimation)

@property(nonatomic,copy)void(^completeBlock)();

- (void) shakeAnimation;

- (void) springingAnimation;

- (void) trans180DegreeAnimation;

- (void) throwFrom:(CGPoint)start to:(CGPoint)end height:(CGFloat)height
          duration:(CGFloat)duration completedBlock:(void(^)())completedBlock;

- (void) praiseAnimation;

@end
