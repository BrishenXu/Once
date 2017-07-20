//
//  NSString+Extension.h
//  KaChuo
//
//  Created by Rain on 2017/4/18.
//  Copyright © 2017年 Rain. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Extension)

+ (NSString*)dictionaryToJson:(NSDictionary *)dic;

+ (NSArray *)filterImage:(NSString *)html;

/**
 判断是否包含违法字符 除文字、字母、数字
 
 @param content <#content description#>
 @return <#return value description#>
 */
+ (BOOL)JudgeTheillegalCharacter:(NSString *)content;

+ (BOOL)isMobileNum:(NSString *)mobNum;

/**
 判断密码 数组、字母、符号至少两种
 
 @param password <#content description#>
 @return <#return value description#>
 */
+ (BOOL)isPassword:(NSString *)password;

@end
