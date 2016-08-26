//
//  UIImageView+Circle.m
//  truelove
//
//  Created by saifing_82 on 16/3/10.
//  Copyright © 2016年 JamesGu. All rights reserved.
//

#import "UIImageView+Circle.h"

@implementation UIImageView(Circle)

- (void)setCircle{
//    [self addObserver:self forKeyPath:@"image" options:NSKeyValueObservingOptionNew|NSKeyValueObservingOptionOld context:nil];
    self.image = [self circleImage:self.image withParam:0];
}

//- (void)dealloc{
//    [self removeObserver:self forKeyPath:@"image"];
//}
//
//- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSString *,id> *)change context:(void *)context {
//    if ([keyPath isEqualToString:@"image"]) {
//        if (self.image) {
//            self.image = [self circleImage:self.image withParam:0];
//            [self removeObserver:self forKeyPath:@"image"];
//        }
//    }
//}

- (UIImage*)circleImage:(UIImage*) image withParam:(CGFloat) inset {
    UIGraphicsBeginImageContext(image.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetLineWidth(context, 2);
    CGContextSetStrokeColorWithColor(context, [UIColor colorWithRed:1.000 green:0.000 blue:0.000 alpha:0.000].CGColor);
    CGRect rect = CGRectMake(inset, inset, image.size.width - inset * 2.0f, image.size.height - inset * 2.0f);
    CGContextAddEllipseInRect(context, rect);
    CGContextClip(context);
    
    [image drawInRect:rect];
    CGContextAddEllipseInRect(context, rect);
    CGContextStrokePath(context);
    UIImage *newimg = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return newimg;
}
@end
