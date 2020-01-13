//
//  YUMEIViewController.m
//  YuMeiAd
//
//  Created by 729020128@qq.com on 01/08/2020.
//  Copyright (c) 2020 729020128@qq.com. All rights reserved.
//

#import "YUMEIViewController.h"
#import <YuMeiAd/YuMeiAdManager.h>
#import <YuMeiAd/YuMeiAdView.h>
#import <YuMeiAd/YuMeiBannerView.h>
#import <YuMeiAd/YumeiRewardVM.h>

@interface YUMEIViewController ()<YuMei_SplashDelegate,YuMei_BannerDelegate,YuMei_RewardDelegate>

/** 开屏 显示 */
@property(nonatomic, strong) UIButton *screenAdBtn;
/** banner 显示 */
@property(nonatomic, strong) UIButton *bannerViewBtn;
@property(nonatomic, strong) YuMeiBannerView *bannerView;
/** 激励视频 */
@property(nonatomic, strong) YumeiRewardVM *yumeiRewardVM;

/** 激励视频 -- 展示 */
@property(nonatomic, strong) UIButton *rewardBtn;



@end

@implementation YUMEIViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self initParams];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    self.screenAdBtn.frame = CGRectMake(10, 100, 200, 40);
    self.bannerViewBtn.frame = CGRectMake(10, 150, 200, 40);
    self.rewardBtn.frame = CGRectMake(10, 200, 150, 40);
    self.bannerView.frame = CGRectMake(10, 300, 300, 80);
    self.bannerView.backgroundColor = [UIColor lightTextColor];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    [self.yumeiRewardVM loadRewardAd];
}
- (void) initParams {
    [YuMeiAdManager initWithAppID:@"1108766560"
                  AndOpenScreenId:@"6050459838764921"
                      AndBannerId:@"5090297660845638"
                 AndRewardVideoId:@"3060591416897653"];
}


- (void) loadYumeiAdAction {
    [YuMeiAdManager sharedInstance].bottomlogoImg = [UIImage imageNamed:@"h2"];
    [[YuMeiAdManager sharedInstance] loadYumeiAdWithRootViewController:nil AndDelegateReceiveController:self];
}

-(void) screenBtnAction: (UIButton *)btn {
    [self loadYumeiAdAction];
}


-(void) bannerViewBtnAction: (UIButton *)btn {
    [self.bannerView loadBanner];
}
-(void) rewardAction: (UIButton *)btn {
    [self.yumeiRewardVM showRewardAd];
}

- (UIButton *)screenAdBtn {
    if (!_screenAdBtn) {
        UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
        [button setTitle:@"开屏广告" forState:UIControlStateNormal];
        button.backgroundColor = [UIColor lightGrayColor];
        [button setTitleColor:[UIColor redColor] forState:UIControlStateHighlighted];
        [button addTarget:self action:@selector(screenBtnAction:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:button];
        _screenAdBtn = button;
    }
    return _screenAdBtn;
}

- (UIButton *)bannerViewBtn {
    if (!_bannerViewBtn) {
        UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
        [button setTitle:@"显示banner" forState:UIControlStateNormal];
        button.backgroundColor = [UIColor lightGrayColor];
        [button addTarget:self action:@selector(bannerViewBtnAction:) forControlEvents:UIControlEventTouchUpInside];
        [button setTitleColor:[UIColor redColor] forState:UIControlStateHighlighted];
        
        [self.view addSubview:button];
        _bannerViewBtn = button;
    }
    return _bannerViewBtn;
}

- (YuMeiBannerView *)bannerView {
    if (!_bannerView) {
        YuMeiBannerView *view = [[YuMeiBannerView alloc] initWithFrame:CGRectMake(10, 200, 400, 80) AndViewController:self];
        view.delegate = self;
        [self.view addSubview: view];
        
        _bannerView = view;
    }
    return _bannerView;
}

- (YumeiRewardVM *)yumeiRewardVM {
    if (!_yumeiRewardVM) {
        YumeiRewardVM *vm = [[YumeiRewardVM alloc] initWithRootViewController:self];
        vm.delegate = self;
        
        _yumeiRewardVM = vm;
    }
    return _yumeiRewardVM;
}

- (UIButton *)rewardBtn {
    if (!_rewardBtn) {
        UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
        [button setTitle:@"激励视频显示" forState:UIControlStateNormal];
        button.backgroundColor = [UIColor lightGrayColor];
        [button addTarget:self action:@selector(rewardAction:) forControlEvents:UIControlEventTouchUpInside];
        [button setTitleColor:[UIColor redColor] forState:UIControlStateHighlighted];
        
        [self.view addSubview:button];
        _rewardBtn = button;
    }
    return _rewardBtn;
}

#pragma mark - yumei_adDelegate -- 开屏
- (void)yumei_SplashDelegateADWillLoad {
    
}

- (void)yumei_SplashDelegateADDidClicked {
    
}

-(void)yumei_SplashDelegateADDidEndWithNormal {
    
}

- (void)yumei_SplashDelegateADDidEndWithSkip {
    
}

-(void)yumei_SplashDelegateADDidFailedWithError:(NSError *)error {
    
}


#pragma mark - yumei_adDelegate -- banner

-(void)yuMei_BannerDelegateADDidLoad {
    NSLog(@"yuMei_BannerDelegateADDidLoad");
}

- (void)yumei_BannerDelegateADDidFailedWithError:(NSError *)error {
    NSLog(@"yumei_BannerDelegateADDidFailedWithError");
}

- (void)yuMei_BannerDelegateADDidClicked {
    NSLog(@"yuMei_BannerDelegateADDidClicked");
}

-(void)yumei_BannerDelegateADWillClose {
    NSLog(@"yumei_BannerDelegateADWillClose");
}

#pragma mark - yumei_adDelegate -- 激励视频
- (void)yuMei_RewardDelegateADDidLoad {
    
}

- (void)yuMei_RewardDelegateADDidFailedWithError:(NSError *)error {
    
}

- (void)yuMei_RewardDelegateADWillVisiable {
    
}

- (void)yuMei_RewardDelegateADDidClose {
    
}

- (void)yuMei_RewardDelegateADDidClicked {
    
}


@end
