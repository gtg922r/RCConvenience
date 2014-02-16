//
//  UIView+ImageFromView.m
//  ttRapidDev
//
//  Created by Ryan Cash on 1/30/14.
//  Copyright (c) 2014 Ryan Cash. All rights reserved.
//

#import "UIView+ImageFromView.h"

@implementation UIView (ImageFromView)

- (UIImage *)imageFromView {
    CGFloat scale = [[UIScreen mainScreen] scale];
    UIGraphicsBeginImageContextWithOptions(self.bounds.size, NO, scale);
    [self.layer renderInContext:UIGraphicsGetCurrentContext()];
    UIImage * image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return image;
}

@end

