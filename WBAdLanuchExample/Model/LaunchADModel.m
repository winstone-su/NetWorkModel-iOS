//
//  LaunchADModel.m
//  WBAdLanuchExample
//
//  Created by swb on 2016/12/19.
//  Copyright © 2016年 wb. All rights reserved.
//

#import "LaunchADModel.h"

@implementation LaunchADModel

- (instancetype)initWithDictionary:(NSDictionary *)dict
{
    self = [super init];
    if (self) {
        id content = [dict objectForKey:@"content"];
        id openUrl = [dict objectForKey:@"openUrl"];
        id contentSize = [dict objectForKey:@"contentSize"];
        id duration = [dict objectForKey:@"duration"];
        
        if ([self isVaildData:content]) {
            self.content = content;
        }
        
        if ([self isVaildData:openUrl]) {
            self.openUrl = openUrl;
        }
        
        if ([self isVaildData:contentSize]) {
            self.contentSize = contentSize;
        }
        
        if ([self isVaildData:duration]) {
            self.duration = [duration intValue];
        }
        
        
    }
    return self;
}



- (float)width
{
    return [[[self.contentSize componentsSeparatedByString:@"*"] firstObject] floatValue];
}

- (float)height
{
    return [[[self.contentSize componentsSeparatedByString:@"*"] lastObject] floatValue];
}

@end
