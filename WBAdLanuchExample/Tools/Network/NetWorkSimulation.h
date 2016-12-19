//
//  NetWorkSimulation.h
//  WBAdLanuchExample
//
//  Created by swb on 2016/12/19.
//  Copyright © 2016年 wb. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ADBaseModel.h"

typedef void(^NetworkSuccess) (ADBaseModel *response);
typedef void(^NetworkFailure) (NSError *error);

@interface NetWorkSimulation : NSObject


+ (void)getLaunchImageDataSuccess:(NetworkSuccess)success failuer:(NetworkFailure)error;


@end
