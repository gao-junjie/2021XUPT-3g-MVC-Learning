//
//  RegisterController.m
//  MVC实例
//
//  Created by mac on 2021/9/7.
//  Copyright © 2021 mac. All rights reserved.
//

#import "RegisterController.h"

@interface RegisterController ()

@end

@implementation RegisterController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _registerView = [[RegisterView alloc] init];
    _registerView.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height);
        
    [_registerView.registerButton addTarget:self action:@selector(pressRegister) forControlEvents:UIControlEventTouchUpInside];
        
    [self.view addSubview:_registerView];
    
    _registerModel = [[RegisterModel alloc] init];

}

- (void)pressRegister {
    BOOL flag = YES;
    for (int i = 0; i < _existUserArray.count; i++) {
        if ([_registerView.userTextField.text isEqualToString:_existUserArray[i]]) {
            flag = NO;
            break;
        }
    }
    if (flag == NO) {
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"提示" message:@"用户名重复!" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *sure = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDestructive handler:nil];
        [alert addAction:sure];
        [self presentViewController:alert animated:YES completion:nil];
    } else {
        [_registerDelegate passName:_registerView.userTextField.text passPassword:_registerView.passwordTextField.text];
        [self dismissViewControllerAnimated:YES completion:nil];
    }
}

@end
