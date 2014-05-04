//
//  UIColor+Extras.m
//
//  Created by Khalid on 2/9/14.
//
//

#import "UIColor+Extras.h"

@implementation UIColor (Extras)

+ (UIColor *)randomColor
{
    CGFloat red =  (CGFloat)arc4random() / (CGFloat)RAND_MAX;
    CGFloat blue = (CGFloat)arc4random() / (CGFloat)RAND_MAX;
    CGFloat green = (CGFloat)arc4random() / (CGFloat)RAND_MAX;
    
    return [UIColor colorWithRed:red green:green blue:blue alpha:1.0];
}

@end
