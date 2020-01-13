//
//  YuMeiBannerView.h
//  ibusCloudAd
//
//  Created by 朱志清 on 2019/11/27.
//  Copyright © 2019 朱志清. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@protocol YuMei_BannerDelegate <NSObject>

@optional

/** 广告 请求成功即将加载 */
-(void) yuMei_BannerDelegateADDidLoad;
/** 广告 加载结束 -- 点击了广告  */
-(void) yuMei_BannerDelegateADDidClicked;
/** 广告 加载结束 -- 将要关闭 */
-(void) yumei_BannerDelegateADWillClose;
/** 广告 加载错误 */
-(void) yumei_BannerDelegateADDidFailedWithError: (NSError *)error;

@end

@interface YuMeiBannerView : UIView

@property (nonatomic, weak) id <YuMei_BannerDelegate> delegate;

/**
 构造方法

 @param frame frame
 @param vc vc
 @return self
 */
- (instancetype)initWithFrame:(CGRect)frame AndViewController: (UIViewController *)vc;

- (void)loadBanner;

@end

NS_ASSUME_NONNULL_END
