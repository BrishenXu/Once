//
//  NSArray+Extension.m
//  KaChuo
//
//  Created by Rain on 2017/4/23.
//  Copyright © 2017年 Rain. All rights reserved.
//

#import "NSArray+Extension.h"

@implementation NSArray (Extension)

+ (BOOL)isEmptyArray:(NSArray *)array {
    return (array.count == 0 || array == nil);
}

+ (BOOL)isEmptyMutableArray:(NSMutableArray *)mutableArray {
    return (mutableArray.count == 0 || mutableArray == nil);
}

@end
