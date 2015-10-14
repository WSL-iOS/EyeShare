//
//  LeanCloudTool.h
//  EyeShare
//
//  Created by lanou3g on 15/10/14.
//  Copyright (c) 2015年 ShengLi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LeanCloudTool : NSObject

+(instancetype)shareLeanCloudTool;

// 添加用户
- (void)insertDataWithAccount:(NSString *)account Password:(NSString *)password;

// 发表状态
- (void)creatMessageWithImage:(NSData *)imageData Word:(NSString *)word;
// 删除状态
- (void)deleteMessageWith;

// 添加评论
- (void)addComment:(NSString *)commemt;



@end
