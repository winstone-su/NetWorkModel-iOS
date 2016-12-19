//
//  ADBaseModel.m
//  WBAdLanuchExample
//
//  Created by swb on 2016/12/19.
//  Copyright © 2016年 wb. All rights reserved.
//

#import "ADBaseModel.h"

@implementation ADBaseModel

- (instancetype)initWithDictionary:(NSDictionary *)dict
{
    self = [super initWithDictionary:dict];
    
    if ([dict isKindOfClass:[NSNull class]] || dict == nil) {
        return self;
    }
    
    if (![dict isKindOfClass:[NSDictionary class]]) {
        return self;
    }
    
    if (self) {
        id code = [dict objectForKey:@"code"];
        id message = [dict objectForKey:@"message"];
        id data = [dict objectForKey:@"data"];
        
        if ([self isVaildData:code]) {
            self.code = [code intValue];
        }
        
        if ([self isVaildData:message]) {
            self.message = message;
        }
        
        if ([self isVaildData:data]) {
            self.data  = data;
        }
    }
    
    
    
    return self;
}

- (BOOL)hasError
{
    if (self.code == 200) {
        return NO;
    }
    
    return YES;
}


+ (BOOL)isADBaseModelClass:(id)model
{
    if (model == nil) {
        return NO;
    }
    
    if (![model isKindOfClass:[NSDictionary class]]) {
        return NO;
    }
    
    NSDictionary *dictionaryModel = (NSDictionary *)model;
    
    NSArray *keys = dictionaryModel.allKeys;
    
    if ([keys containsObject:@"code" ]&& [keys containsObject:@"message"] && [keys containsObject:@"data"]) {
        return YES;
    }
    
    return NO;
    
}

@end
