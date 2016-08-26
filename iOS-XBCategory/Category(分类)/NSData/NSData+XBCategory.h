//
//  NSData+XBCategory.h
//  BXYTool
//
//  Created by saifing on 16/8/26.
//  Copyright © 2016年 saifing. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSData (Base64)

//将字符串base64加密返回新的NSData类型
+ (NSData *)base64DataFromString:(NSString *)string;


@end

@interface NSData (AES)

- (NSData *)AES256ParmEncryptWithKey:(NSString *)key;   //加密
- (NSData *)AES256ParmDecryptWithKey:(NSString *)key;   //解密

@end