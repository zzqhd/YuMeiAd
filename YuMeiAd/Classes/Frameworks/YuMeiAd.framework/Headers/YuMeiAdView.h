//
//  YuMeiAdView.h
//  ibusCloudAd
//
//  Created by   on 2019/8/11.
//  Copyright © 2019  . All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@protocol YuMei_SplashDelegate <NSObject>

@optional

/** 广告 请求成功即将加载 */
-(void) yumei_SplashDelegateADWillLoad;
/** 广告 加载结束 -- 点击了广告  */
-(void) yumei_SplashDelegateADDidClicked;
/** 广告 加载结束 -- 倒计时完毕    */
-(void) yumei_SplashDelegateADDidEndWithNormal;
/** 广告 加载结束 -- 点击跳过 */
-(void) yumei_SplashDelegateADDidEndWithSkip;
/** 广告 加载错误 */
-(void) yumei_SplashDelegateADDidFailedWithError: (NSError *)error;

@end


@interface YuMeiAdView : UIView


@property (nonatomic, weak) id <YuMei_SplashDelegate> delegate;


/** logo    */
@property (nonatomic, strong) UIImage *logoImage;



/** init */
- (instancetype)initWithFrame:(CGRect)frame AndLogoImag: (UIImage *)logoImage AndRootViewController: (UIViewController *)rootVC;

@end

NS_ASSUME_NONNULL_END
