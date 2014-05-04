//
//  UIView+Extras.h
//
//  Created by Khalid on 3/2/14.
//
//

#import <UIKit/UIKit.h>

@interface UIView (Extras)
- (UIImage *) imageByRenderingView;
- (UIImage *) blurredImageByRenderingView;
- (UIImage *) blurredImageByRenderingViewWithBlurRadius:(CGFloat)blurRadius;
- (UIImage *) blurredLightImageByRenderingView;
- (UIImage *) blurredDarkImageByRenderingView;
@end
