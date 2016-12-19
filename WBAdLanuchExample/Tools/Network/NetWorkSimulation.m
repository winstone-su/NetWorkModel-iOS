//
//  NetWorkSimulation.m
//  WBAdLanuchExample
//
//  Created by swb on 2016/12/19.
//  Copyright © 2016年 wb. All rights reserved.
//

#import "NetWorkSimulation.h"


@implementation NetWorkSimulation

+ (void)getLaunchImageDataSuccess:(NetworkSuccess)success failuer:(NetworkFailure)error
{
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        NSData *data = [NSData dataWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"LaunchImageAd" ofType:@"json"]];
        NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:nil];
        if ([ADBaseModel isADBaseModelClass:dict]) {
            ADBaseModel *resultModel = [[ADBaseModel alloc] initWithDictionary:dict];
            success(resultModel);
        }
//        if (success) {
//            success(dict);
//        }
    });
}

@end
