//
//  UIMenuItem+XBCategory.h
//  BXYTool
//
//  Created by saifing on 16/8/26.
//  Copyright © 2016年 saifing. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIMenuItem (XBCategory)

- (instancetype)initWithTitle:(NSString *)title actionBlock:(void (^)(id sender))block;

@end
