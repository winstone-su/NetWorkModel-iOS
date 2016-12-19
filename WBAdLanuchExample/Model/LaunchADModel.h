//
//  LaunchADModel.h
//  WBAdLanuchExample
//
//  Created by swb on 2016/12/19.
//  Copyright © 2016年 wb. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BaseModel.h"

@interface LaunchADModel : BaseModel

@property (nonatomic,copy) NSString *content;

@property (nonatomic,copy) NSString *openUrl;

@property (nonatomic,copy) NSString *contentSize;

@property (nonatomic,assign) int duration;


@property (nonatomic,assign,readonly) float width;

@property (nonatomic,assign,readonly) float height;

- (instancetype)initWithDictionary:(NSDictionary *)dict;

@end
