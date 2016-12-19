//
//  ADBaseModel.h
//  WBAdLanuchExample
//
//  Created by swb on 2016/12/19.
//  Copyright © 2016年 wb. All rights reserved.
//

#import "BaseModel.h"

@interface ADBaseModel : BaseModel

@property (nonatomic, assign) int code;

@property (nonatomic,copy) NSString *message;

@property (nonatomic,strong) id data;


@property (nonatomic,assign,readonly) BOOL hasError;


+ (BOOL)isADBaseModelClass:(id)model;

@end
