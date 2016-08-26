//
//  NSAttributedString+XBCategory.h
//  BXYTool
//
//  Created by saifing on 16/8/26.
//  Copyright © 2016年 saifing. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSAttributedString (XBCategory)

//由于系统计算富文本的高度不正确，自己写了方法
- (CGFloat)heightWithContainWidth:(CGFloat)width;

@end
