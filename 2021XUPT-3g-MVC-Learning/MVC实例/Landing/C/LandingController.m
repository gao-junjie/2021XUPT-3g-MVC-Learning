//
//  LandingController.m
//  MVC实例
//
//  Created by mac on 2021/9/7.
//  Copyright © 2021 mac. All rights reserved.
//

#import "LandingController.h"

@interface LandingController ()

@end

@implementation LandingController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(tongzhi:)name:@"tongzhi" object:nil];

    _landingView = [[LandingView alloc] init];
    _landingView.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height);
    
    [_landingView.registerButton addTarget:self action:@selector(pressRegister) forControlEvents:UIControlEventTouchUpInside];
    [_landingView.landingButton addTarget:self action:@selector(pressLanding) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:_landingView];
    
    _landingModel = [[LandingModel alloc] init];
    [_landingModel landingMassageInit];
}

- (void)pressRegister {
    RegisterController* registerViewController = [[RegisterController alloc]init];
    registerViewController.modalPresentationStyle = UIModalPresentationFullScreen;
    registerViewController.existUserArray = _landingModel.userArray;
    registerViewController.registerDelegate = self;
    [self presentViewController:registerViewController animated:YES completion:nil];
}


- (void)pressLanding {
    BOOL flag = NO;
    for (int i = 0; i < _landingModel.passwordArray.count; i++) {
        if ([_landingView.userTextField.text isEqualToString:_landingModel.userArray[i]] && [_landingView.passwordTextField.text isEqualToString:_landingModel.passwordArray[i]]) {
            flag = YES;
            break;
        }
    }
    if (flag == YES) {
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"提示" message:@"登陆成功!" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *sure = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleCancel handler:nil];
        [alert addAction:sure];
        [self presentViewController:alert animated:YES completion:nil];
    } else {
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"提示" message:@"帐号或密码错误!" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *sure = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDestructive handler:nil];
        [alert addAction:sure];
        [self presentViewController:alert animated:YES completion:nil];
    }
}

- (void)passName:(NSString *)name passPassword:(NSString *)password {
    [_landingModel.userArray addObject:name];
    [_landingModel.passwordArray addObject:password];
}

- (void)tongzhi:(NSNotification *)text {

    NSLog(@"%@",text.userInfo[@"textOne"]);
    NSLog(@"－－－－－接收到通知------");
}

- (void)dealloc {
    [[NSNotificationCenter defaultCenter] removeObserver:self name:@"tongzhi" object:self];
}


@end
