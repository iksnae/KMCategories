//
//  UIView+Extras.m
//
//  Created by Khalid on 3/2/14.
//
//

#import "UIView+Extras.h"

@implementation UIView (Extras)
- (UIImage *)imageByRenderingView
{
    UIGraphicsBeginImageContext(self.bounds.size);
    [self.layer renderInContext:UIGraphicsGetCurrentContext()];
    UIImage *resultingImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return resultingImage;
}

- (UIImage *)blurredImageByRenderingView
{
    return [self blurredImageByRenderingViewWithBlurRadius:4.0f];
}

- (UIImage *)blurredLightImageByRenderingView
{
    UIImage *originalImage = [self imageByRenderingView];
    
    CIImage *outputImage;
    
    CIFilter *gaussianBlurFilter = [CIFilter filterWithName:@"CIGaussianBlur"];
    [gaussianBlurFilter setDefaults];
    [gaussianBlurFilter setValue:[CIImage imageWithCGImage:[originalImage CGImage]] forKey:kCIInputImageKey];
    [gaussianBlurFilter setValue:@(16.0f) forKey:kCIInputRadiusKey];
    
    outputImage = [gaussianBlurFilter valueForKey:kCIOutputImageKey];
    
    
    CIFilter *colorControlFilter = [CIFilter filterWithName:@"CIColorControls"];
    [colorControlFilter setDefaults];
    [colorControlFilter setValue:outputImage forKey:kCIInputImageKey];
    [colorControlFilter setValue:@(0.08f) forKey:@"inputBrightness"];
    
    
    CIImage *outputImageRef = [colorControlFilter outputImage];
    CIContext *context   = [CIContext contextWithOptions:nil];
    
    CGImageRef cgimg     = [context createCGImage:outputImageRef fromRect:self.bounds];
    UIImage *image       = [UIImage imageWithCGImage:cgimg];
    
    CGImageRelease(cgimg);
    return image;
}

- (UIImage *)blurredDarkImageByRenderingView
{
    UIImage *originalImage = [self imageByRenderingView];
    
    CIImage *outputImage;
    
    CIFilter *gaussianBlurFilter = [CIFilter filterWithName:@"CIGaussianBlur"];
    [gaussianBlurFilter setDefaults];
    [gaussianBlurFilter setValue:[CIImage imageWithCGImage:[originalImage CGImage]] forKey:kCIInputImageKey];
    [gaussianBlurFilter setValue:@(16.0f) forKey:kCIInputRadiusKey];
    
    outputImage = [gaussianBlurFilter valueForKey:kCIOutputImageKey];
    
    
    CIFilter *colorControlFilter = [CIFilter filterWithName:@"CIColorControls"];
    [colorControlFilter setDefaults];
    [colorControlFilter setValue:outputImage forKey:kCIInputImageKey];
    [colorControlFilter setValue:@(-0.08f) forKey:@"inputBrightness"];
    
    
    CIImage *outputImageRef = [colorControlFilter outputImage];
    CIContext *context   = [CIContext contextWithOptions:nil];
    
    CGImageRef cgimg     = [context createCGImage:outputImageRef fromRect:self.bounds];
    UIImage *image       = [UIImage imageWithCGImage:cgimg];
    
    CGImageRelease(cgimg);
    return image;
}

- (UIImage *) blurredImageByRenderingViewWithBlurRadius:(CGFloat)blurRadius
{
    UIImage *originalImage = [self imageByRenderingView];
    CIFilter *gaussianBlurFilter = [CIFilter filterWithName:@"CIGaussianBlur"];
    [gaussianBlurFilter setDefaults];
    [gaussianBlurFilter setValue:[CIImage imageWithCGImage:[originalImage CGImage]] forKey:kCIInputImageKey];
    [gaussianBlurFilter setValue:@(blurRadius) forKey:kCIInputRadiusKey];
    
    CIImage *outputImage = [gaussianBlurFilter outputImage];
    CIContext *context   = [CIContext contextWithOptions:nil];
    
    CGImageRef cgimg     = [context createCGImage:outputImage fromRect:self.bounds];
    UIImage *image       = [UIImage imageWithCGImage:cgimg];
    
    CGImageRelease(cgimg);
    return image;
}



@end
