//
//  YUMEIAppDelegate.h
//  YuMeiAd
//
//  Created by 729020128@qq.com on 01/08/2020.
//  Copyright (c) 2020 729020128@qq.com. All rights reserved.
//

@import UIKit;

#import "GDTSplashAd.h"

static NSString *kGDTMobSDKAppId = @"1105344611";

@interface YUMEIAppDelegate : UIResponder <UIApplicationDelegate,GDTSplashAdDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) GDTSplashAd *splash;

@end
