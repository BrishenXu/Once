//
//  NSString+Time.h
//  KaChuo
//
//  Created by Rain on 2017/7/18.
//  Copyright © 2017年 Rain. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Time)


/**
 格式: MM月dd日 HH:mm

 @param timeInterval <#timeInterval description#>
 @return <#return value description#>
 */
+ (NSString *)timeFromTimeIntervalString:(NSString *)timeInterval;


/**
 xx天前

 @param timeIntervalStr <#timeIntervalStr description#>
 @return <#return value description#>
 */
+ (NSString *)agoTimeFromTimeIntervalString:(NSString *)timeIntervalStr;

@end
