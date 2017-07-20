//
//  UIBarButtonItem+Item.m
//  KaChuo
//
//  Created by apple on 17/3/8.
//  Copyright © 2017年 kachuo. All rights reserved.
//

#import "UIBarButtonItem+Item.h"

@implementation UIBarButtonItem (Item)
+ (UIBarButtonItem *)barButtonItemWithImage:(UIImage *)image target:(id)target action:(SEL)action forControlEvents:(UIControlEvents)controlEvents{
    UIButton * barBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [barBtn setImage:image forState:UIControlStateNormal];
    [barBtn addTarget:target action:action forControlEvents:controlEvents];
    [barBtn sizeToFit];
    return [[UIBarButtonItem alloc] initWithCustomView:barBtn];
}
@end
