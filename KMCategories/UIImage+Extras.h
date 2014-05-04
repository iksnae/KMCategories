//
//  UIImage+Extras.h
//
//  Created by Khalid on 3/2/14.
//
//

#import <UIKit/UIKit.h>

@interface UIImage (Extras)
+ (UIImage *)imageFromCAShapeLayer:(CAShapeLayer *)layer;
- (UIImage *)imageTintedWithColor:(UIColor *)color;
- (UIImage *)imageSubSectionWithRect:(CGRect)rect;
- (UIImage *)applyLightEffect;
- (UIImage *)applyExtraLightEffect;
- (UIImage *)applyDarkEffect;
- (UIImage *)applyTintEffectWithColor:(UIColor *)tintColor;
- (UIImage *)applyBlurWithRadius:(CGFloat)blurRadius tintColor:(UIColor *)tintColor saturationDeltaFactor:(CGFloat)saturationDeltaFactor maskImage:(UIImage *)maskImage;
- (UIImage *)resizeWithSize:(CGSize)size;
@end
