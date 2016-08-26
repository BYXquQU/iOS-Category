//
//  UITableView+Warn.m
//  O2O
//
//  Created by zxc on 14-7-6.
//  Copyright (c) 2014年 zxc. All rights reserved.
//

#import "UITableView+Warn.h"

#define kWarnLabel 239
@implementation UITableView (Warn)
- (void)showWarn {
    if ([self.dataSource respondsToSelector:@selector(tableView:numberOfRowsInSection:)]&&[self.dataSource respondsToSelector:@selector(numberOfSectionsInTableView:)]) {
        
        NSInteger num = 0;
        NSInteger sectionNum = [self.dataSource numberOfSectionsInTableView:self];
        
        for (int i = 0; i < sectionNum; i++) {
            num += [self.dataSource tableView:self numberOfRowsInSection:i];
        }
        
        if (num == 0) {
            UILabel *lab = (UILabel *)[self viewWithTag:kWarnLabel];
            CGFloat heightE = 0;
            if (self.tableHeaderView) {
                heightE = self.tableHeaderView.bounds.size.height;
            }
            if (lab == nil) {
                lab = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, 100, 20)];
                lab.center = CGPointMake(self.bounds.size.width/2, (self.bounds.size.height - heightE)/2 + heightE);
                lab.textColor = [UIColor whiteColor];
                lab.text = @"暂无数据";
                lab.textAlignment = NSTextAlignmentCenter;
                lab.font = [UIFont systemFontOfSize:15.0];
                lab.tag = kWarnLabel;
                [self addSubview:lab];
            }
            lab.hidden = NO;
        }
    }
    
}

- (void)hiddenWarn {
    UILabel *lab = (UILabel *)[self viewWithTag:kWarnLabel];
    if (lab == nil) {
        return;
    }
    lab.hidden = YES;
}

@end
