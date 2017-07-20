//
//  UIViewController+Extension.h
//  KaChuo
//
//  Created by Rain on 2017/5/31.
//  Copyright © 2017年 Rain. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIViewController (Extension)

+ (UIViewController *)topViewController;
+ (UIViewController *)topViewController:(UIViewController *)rootViewController;

@end
