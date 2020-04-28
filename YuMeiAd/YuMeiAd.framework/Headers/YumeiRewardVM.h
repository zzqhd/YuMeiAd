//
//  YumeiRewardVM.h
//  ibusCloudAd
//
//  Created by 朱志清 on 2019/12/28.
//  Copyright © 2019 朱志清. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN


@protocol YuMei_RewardDelegate <NSObject>

@optional

/** 激励视频 预加载完毕 */
-(void) yuMei_RewardDelegateADDidLoad;
/** 激励视频 预加载错误 */
-(void) yuMei_RewardDelegateADDidFailedWithError: (NSError *)error;
/** 激励视频 加载结束 -- 点击了激励视频  */
-(void) yuMei_RewardDelegateADDidClicked;
/** 激励视频 即将显示    */
-(void) yuMei_RewardDelegateADWillVisiable;
/** 激励视频 即将关闭    */
-(void) yuMei_RewardDelegateADDidClose;

@end
@interface YumeiRewardVM : NSObject


/** 代理 */
@property (nonatomic, weak) id <YuMei_RewardDelegate> delegate;

/**
 唯一的初始化方法

 @param rootVC 当前显示激励视频的Viewcontroller
 @return vm
 */
- (instancetype)initWithRootViewController: (UIViewController *)rootVC;


/** 预下载激励视频 */
- (void) loadRewardAd;

/** 显示激励视频 */
- (void) showRewardAd;

@end

NS_ASSUME_NONNULL_END
