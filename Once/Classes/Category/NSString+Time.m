//
//  NSString+Time.m
//  KaChuo
//
//  Created by Rain on 2017/7/18.
//  Copyright © 2017年 Rain. All rights reserved.
//

#import "NSString+Time.h"

@implementation NSString (Time)

+ (NSString *)timeFromTimeIntervalString:(NSString *)timeIntervalStr {
    NSTimeInterval time = [timeIntervalStr doubleValue];
    NSDate *detailDate = [NSDate dateWithTimeIntervalSince1970:time];
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    [formatter setDateFormat:@"MM月dd日 HH:mm"];
    return [formatter stringFromDate:detailDate];
}

+ (NSString *)agoTimeFromTimeIntervalString:(NSString *)timeIntervalStr {
    // 获取当前时时间戳 1466386762.345715 十位整数 6位小数
    NSTimeInterval currentTime = [[NSDate date] timeIntervalSince1970];
    // 创建歌曲时间戳(后台返回的时间 一般是13位数字)
    NSTimeInterval createTime = [timeIntervalStr doubleValue];
    // 时间差
    NSTimeInterval time = currentTime - createTime;
    NSInteger min = time/60;
    if (min<60) {
        return [NSString stringWithFormat:@"%ld分钟前",min];
    }
    // 秒转小时
    NSInteger hours = time/3600;
    if (hours<24) {
        return [NSString stringWithFormat:@"%ld小时前",hours];
    }
    //秒转天数
    NSInteger days = time/3600/24;
    if (days < 30) {
        return [NSString stringWithFormat:@"%ld天前",days];
    }
    //秒转月
    NSInteger months = time/3600/24/30;
    if (months < 12) {
        return [NSString stringWithFormat:@"%ld月前",months];
    }
    //秒转年
    NSInteger years = time/3600/24/30/12;
    return [NSString stringWithFormat:@"%ld年前",years];
}

@end
