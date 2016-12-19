//
//  ViewController.m
//  WBAdLanuchExample
//
//  Created by swb on 2016/12/14.
//  Copyright © 2016年 wb. All rights reserved.
//

#import "ViewController.h"
#import "NetWorkSimulation.h"
#import "LaunchADModel.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self getNetWorkData];
}


- (void)getNetWorkData
{
    [NetWorkSimulation getLaunchImageDataSuccess:^(ADBaseModel *result) {
        if (result.hasError) {
            return ;
        }
        if (result.data && [result.data isKindOfClass:[NSDictionary class]]) {
            LaunchADModel *model = [[LaunchADModel alloc] initWithDictionary:result.data];
            NSLog(@"%@",model.content);
        }
    } failuer:^(NSError *error) {
        
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
