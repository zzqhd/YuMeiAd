//
//  YuMeiAdManager.h
//  ibusCloudAd
//
//  Created by 朱志清 on 2019/8/13.
//  Copyright © 2019 朱志清. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface YuMeiAdManager : NSObject


/**广告页底部是否增加一个logo*/
@property (nonatomic, strong) UIImage *bottomlogoImg;


/**
 初始化方法

 @param AppId  后台申请的APPID
 @param openScreenId 后台申请的开屏广告位ID
 @param bannerId 后台申请的 banner 广告位ID
 @param rewardVideoId 后台申请的 激励视频广告位ID
 */
+ (void) initWithAppID: (NSString *)AppId
       AndOpenScreenId: (NSString *)openScreenId
           AndBannerId: (NSString *)bannerId
      AndRewardVideoId: (NSString *)rewardVideoId;


+ (instancetype)sharedInstance ;


/**
 加载开屏广告
 @param nowController 当前接收代理的的controller或者是View
 */
- (void) loadYumeiAdWithDelegateReceiveController: (id)nowController;



+ (id) getValueForKey: (NSString *)customerKey;


/**
 调用消失显示的window
 */
- (void) dismissAdView;

@end

NS_ASSUME_NONNULL_END
