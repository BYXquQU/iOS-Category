//
//  UITableView+ClearLine.m
//  iOS-XBCategory
//
//  Created by saifing on 16/8/26.
//  Copyright © 2016年 baiyinxiao. All rights reserved.
//

#import "UITableView+ClearLine.h"

@implementation UITableView (ClearLine)

- (UITableView *)cleanLine {
    UIView *view = [[UIView alloc]initWithFrame:CGRectMake(CGFLOAT_MIN, CGFLOAT_MIN, CGFLOAT_MIN, CGFLOAT_MIN)];
    [view setBackgroundColor:[UIColor clearColor]];
    [self setTableHeaderView:view];
    [self setTableFooterView:view];
    return self;
}

@end
