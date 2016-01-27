
/**
 *  UIImage+LL.h
 */
#import <UIKit/UIKit.h>

@interface UIImage (LL)
/**
 *  打水印
 *
 *  @param backgroundImage   背景图片
 *  @param markName 右下角的水印图片
 */
+ (instancetype)waterMarkWithImageName:(NSString *)backgroundImage andMarkImageName:(NSString *)markName;
@end
