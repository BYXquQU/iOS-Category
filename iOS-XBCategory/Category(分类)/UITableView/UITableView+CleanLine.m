//
//  UITableView+CleanLine.m
//  YDMap
//
//  Created by sf on 19/7/14.
//  Copyright (c) 2014 saifing. All rights reserved.
//

#import "UITableView+CleanLine.h"
#import <CommonCrypto/CommonDigest.h>

@implementation UITableView (CleanLine)

- (UITableView *)cleanLine {
    UIView *view = [[UIView alloc]initWithFrame:CGRectMake(CGFLOAT_MIN, CGFLOAT_MIN, CGFLOAT_MIN, CGFLOAT_MIN)];
    [view setBackgroundColor:[UIColor clearColor]];
    [self setTableHeaderView:view];
    [self setTableFooterView:view];
    return self;
}
@end