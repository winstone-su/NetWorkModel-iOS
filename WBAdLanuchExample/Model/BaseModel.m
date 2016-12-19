//
//  BaseModel.m
//  WBAdLanuchExample
//
//  Created by swb on 2016/12/19.
//  Copyright © 2016年 wb. All rights reserved.
//

#import "BaseModel.h"

@implementation BaseModel

-(instancetype)init
{
    self = [super init];
    return self;
}

- (instancetype)initWithDictionary:(NSDictionary *)dict
{
    self = [self init];
    return self;
}


- (BOOL)isVaildData:(id)obj
{
    if (![obj isKindOfClass:[NSNull class]] && obj) {
        return YES;
    }
    return NO;
}

@end
