//
//  ViewController.m
//  ZSBasicAnimation
//
//  Created by IOSer2 on 2020/12/7.
//

#import "ViewController.h"

#ifndef AnimationKeyPathName_h
#define AnimationKeyPathName_h
#import <Foundation/Foundation.h>
/* CATransform3D Key Paths */
/* 旋转x,y,z分别是绕x,y,z轴旋转 */
static NSString *kCARotation = @"transform.rotation";
static NSString *kCARotationX = @"transform.rotation.x";
static NSString *kCARotationY = @"transform.rotation.y";
static NSString *kCARotationZ = @"transform.rotation.z";

/* 缩放x,y,z分别是对x,y,z方向进行缩放 */
static NSString *kCAScale = @"transform.scale";
static NSString *kCAScaleX = @"transform.scale.x";
static NSString *kCAScaleY = @"transform.scale.y";
static NSString *kCAScaleZ = @"transform.scale.z";

/* 平移x,y,z同上 */
static NSString *kCATranslation = @"transform.translation";
static NSString *kCATranslationX = @"transform.translation.x";
static NSString *kCATranslationY = @"transform.translation.y";
static NSString *kCATranslationZ = @"transform.translation.z";

/* 平面 */
/* CGPoint中心点改变位置，针对平面 */
static NSString *kCAPosition = @"position";
static NSString *kCAPositionX = @"position.x";
static NSString *kCAPositionY = @"position.y";

/* CGRect */
static NSString *kCABoundsSize = @"bounds.size";
static NSString *kCABoundsSizeW = @"bounds.size.width";
static NSString *kCABoundsSizeH = @"bounds.size.height";
static NSString *kCABoundsOriginX = @"bounds.origin.x";
static NSString *kCABoundsOriginY = @"bounds.origin.y";

/* 透明度 */
static NSString *kCAOpacity = @"opacity";
/* 背景色 */
static NSString *kCABackgroundColor = @"backgroundColor";
/* 圆角 */
static NSString *kCACornerRadius = @"cornerRadius";
/* 边框 */
static NSString *kCABorderWidth = @"borderWidth";
/* 阴影颜色 */
static NSString *kCAShadowColor = @"shadowColor";
/* 偏移量CGSize */
static NSString *kCAShadowOffset = @"shadowOffset";
/* 阴影透明度 */
static NSString *kCAShadowOpacity = @"shadowOpacity";
/* 阴影圆角 */
static NSString *kCAShadowRadius = @"shadowRadius";
#endif /* AnimationKeyPathName_h */

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSArray * array = @[kCARotation,kCARotationX,kCARotationY,kCAScaleZ,
                        kCAScale,kCAScaleX,kCAScaleY,kCAScaleZ,
                        kCATranslation,kCATranslationX,kCATranslationY,kCATranslationZ,
                        kCAPosition,kCAPositionX,kCAPositionY,
                        kCABoundsSize,kCABoundsSizeW,kCABoundsSizeH,kCABoundsOriginX,kCABoundsOriginY,
                        kCAOpacity,kCABackgroundColor,kCACornerRadius,kCABorderWidth,kCAShadowColor,kCAShadowOffset,
                        kCAShadowOpacity,kCAShadowRadius
    ];
    
    int i = 0;
    for (UIButton * button in self.buttons) {
        
        NSString * kayPath = @"kCAShadowRadius";
        if (array.count > i) {
            kayPath = [array objectAtIndex:i];
        }else{
            NSLog(@"%d",i);
        }
        [button setTitle:kayPath forState:UIControlStateNormal];
        i++;
        CABasicAnimation * animation = [CABasicAnimation animationWithKeyPath:kayPath];
        animation.fromValue = @0;
        animation.toValue = @3;
        if (kayPath == kCAPositionX || kayPath == kCAPositionY ) {
            animation.toValue = @130;

        }

        animation.duration = 1.0;
        animation.repeatCount = MAXFLOAT;
        animation.autoreverses = YES;
        animation.timingFunction =  [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseIn];
        animation.removedOnCompletion = NO;
        [button.layer addAnimation:animation forKey:[NSString stringWithFormat:@"an%d",i]];
        
        
        
        
        
    }
    
    
    
    // Do any additional setup after loading the view.
}


@end
