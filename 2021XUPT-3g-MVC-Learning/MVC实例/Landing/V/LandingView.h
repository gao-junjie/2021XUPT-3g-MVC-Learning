//
//  LandingView.h
//  MVC实例
//
//  Created by mac on 2021/9/7.
//  Copyright © 2021 mac. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface LandingView : UIView

@property (nonatomic,strong) UITextField* userTextField;
@property (nonatomic,strong) UITextField* passwordTextField;
@property (nonatomic,strong) UIButton* landingButton;
@property (nonatomic,strong) UIButton* registerButton;


@end

NS_ASSUME_NONNULL_END
