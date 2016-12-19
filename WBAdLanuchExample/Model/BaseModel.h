//
//  BaseModel.h
//  WBAdLanuchExample
// 网络层数据建模
//  Created by swb on 2016/12/19.
//  Copyright © 2016年 wb. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BaseModel : NSObject


- (instancetype)initWithDictionary:(NSDictionary *)dict;

- (BOOL)isVaildData:(id)obj;

@end
