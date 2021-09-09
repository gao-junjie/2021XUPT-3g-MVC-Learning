//
//  RegisterController.h
//  MVC实例
//
//  Created by mac on 2021/9/7.
//  Copyright © 2021 mac. All rights reserved.
//

#import "ViewController.h"
#import "RegisterView.h"
#import "RegisterModel.h"

NS_ASSUME_NONNULL_BEGIN

@protocol RegisterDelegate <NSObject>

- (void)passName:(NSString *)name passPassword:(NSString *)password;

@end

@interface RegisterController : ViewController

@property(nonatomic,strong) RegisterView* registerView;
@property(nonatomic,strong) RegisterModel* registerModel;
@property (nonatomic, strong) NSMutableArray* existUserArray;
@property id <RegisterDelegate> registerDelegate;

@end

NS_ASSUME_NONNULL_END
