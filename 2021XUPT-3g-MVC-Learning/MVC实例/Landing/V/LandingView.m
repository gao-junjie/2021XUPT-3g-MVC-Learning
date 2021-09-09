//
//  LandingView.m
//  MVC实例
//
//  Created by mac on 2021/9/7.
//  Copyright © 2021 mac. All rights reserved.
//

#import "LandingView.h"

@implementation LandingView

- (instancetype)initWithFrame:(CGRect)frame {
    
    self = [super initWithFrame:frame];
    self.backgroundColor = [UIColor whiteColor];
    _userTextField = [[UITextField alloc] initWithFrame:CGRectMake(100, 200, 175, 40)];
    _userTextField.backgroundColor = [UIColor yellowColor];
    _userTextField.placeholder = @"输入用户名";
    [self addSubview:_userTextField];
    
    _passwordTextField = [[UITextField alloc] initWithFrame:CGRectMake(100, 300, 175, 40)];
    _passwordTextField.placeholder = @"输入密码";
    _passwordTextField.backgroundColor = [UIColor yellowColor];
    [self addSubview:_passwordTextField];
    
    _landingButton= [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [_landingButton setTitle:@"登陆" forState:UIControlStateNormal];
    [_landingButton setFrame:CGRectMake(120, 500, 75, 30)];
    [self addSubview:_landingButton];
    
    _registerButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [_registerButton setTitle:@"注册" forState:UIControlStateNormal];
    [_registerButton setFrame:CGRectMake(225, 500, 75, 30)];
    [self addSubview:_registerButton];
    
    return self;
}


@end
