//
//  LandingController.h
//  MVC实例
//
//  Created by mac on 2021/9/7.
//  Copyright © 2021 mac. All rights reserved.
//

#import "ViewController.h"
#import "LandingView.h"
#import "LandingModel.h"
#import "RegisterController.h"

NS_ASSUME_NONNULL_BEGIN

@interface LandingController : ViewController <RegisterDelegate>
@property(nonatomic,strong) LandingView* landingView;
@property(nonatomic,strong) LandingModel* landingModel;

- (void)passName:(NSString *)name passPassword:(NSString *)password;
@end

NS_ASSUME_NONNULL_END
