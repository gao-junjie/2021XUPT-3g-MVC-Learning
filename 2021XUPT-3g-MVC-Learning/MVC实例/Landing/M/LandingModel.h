//
//  LandingModel.h
//  MVC实例
//
//  Created by mac on 2021/9/7.
//  Copyright © 2021 mac. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LandingModel : NSObject
@property (nonatomic, strong) NSMutableArray* userArray;
@property (nonatomic, strong) NSMutableArray* passwordArray;

- (void)landingMassageInit;
@end

NS_ASSUME_NONNULL_END
