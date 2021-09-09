//
//  LandingModel.m
//  MVC实例
//
//  Created by mac on 2021/9/7.
//  Copyright © 2021 mac. All rights reserved.
//

#import "LandingModel.h"

@implementation LandingModel

- (void)landingMassageInit {
    _userArray = [[NSMutableArray alloc] init];
    _passwordArray = [[NSMutableArray alloc] init];
    [_userArray addObject:@"11"];
    [_passwordArray addObject:@"11"];
    //添加 字典，将label的值通过key值设置传递
    NSDictionary *dict =[[NSDictionary alloc]initWithObjectsAndKeys:@"初始化完毕！",@"textOne", nil];
    //创建通知
    NSNotification *notification =[NSNotification notificationWithName:@"tongzhi" object:nil userInfo:dict];
    //通过通知中心发送通知
    [[NSNotificationCenter defaultCenter] postNotification:notification];
}




@end
