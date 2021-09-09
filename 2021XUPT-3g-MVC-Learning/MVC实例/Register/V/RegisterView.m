//
//  RegisterView.m
//  MVC实例
//
//  Created by mac on 2021/9/7.
//  Copyright © 2021 mac. All rights reserved.
//

#import "RegisterView.h"

@implementation RegisterView

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
    
    _registerButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [_registerButton setTitle:@"确认注册" forState:UIControlStateNormal];
    [_registerButton setFrame:CGRectMake(145, 500, 95, 50)];
    [self addSubview:_registerButton];
    
    return self;
}

@end
