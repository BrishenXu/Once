//
//  UIBarButtonItem+Item.h
//  KaChuo
//
//  Created by apple on 17/3/8.
//  Copyright © 2017年 kachuo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (Item)
+ (UIBarButtonItem *)barButtonItemWithImage:(UIImage *)image target:(id)target action:(SEL)action forControlEvents:(UIControlEvents)controlEvents;
@end
