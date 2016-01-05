//
//  ViewController.m
//  CircleAnimationDemo
//
//  Created by dev on 15/12/22.
//  Copyright © 2015年 thomas. All rights reserved.
//

#define RGBColor(r,g,b) [UIColor colorWithRed:(r)/255.0f green:(g)/255.0f blue:(b)/255.0f alpha:1.0f]
#define RGBAColor(r,g,b,a) [UIColor colorWithRed:(r)/255.0f green:(g)/255.0f blue:(b)/255.0f alpha:(a)]
#define SCREEN_WIDTH [[UIScreen mainScreen] bounds].size.width
#define SCREEN_HEIGHT [[UIScreen mainScreen] bounds].size.height

#import "ViewController.h"
#import "YMPowerDashboard.h"
#import "YMStarsView.h"

#import <Masonry.h>

@interface ViewController ()
<StarsViewDataSource,
StarsViewDelegate>

@property (strong, nonatomic) YMPowerDashboard *circleAnimationView;

@property (strong, nonatomic) UIImageView *bgimageView;

@property (strong, nonatomic) UIImageView *otherbgImageView;

@property (strong, nonatomic) YMStarsView *starsView;

@property (strong, nonatomic) CADisplayLink *displayLink;

@end

@implementation ViewController

#pragma mark - Lifecycle

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupViews];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [UIView animateWithDuration:2.0f delay:0.0f options:UIViewAnimationOptionAutoreverse | UIViewAnimationOptionRepeat animations:^{
        self.otherbgImageView.alpha = 0.0f;
    } completion:^(BOOL finished) {
        self.otherbgImageView.alpha = 1.0f;
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark - Private

- (void)setupViews {
    
    self.title = @"Demo";
    //star
    self.starsView = [[YMStarsView alloc] initWithFrame:self.view.bounds];
    self.starsView.delegate = self;
    self.starsView.dateSource = self;
    [self.view addSubview:self.starsView];
    [self.starsView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.right.and.bottom.equalTo(self.starsView.superview);
        make.top.equalTo(self.starsView.superview).with.offset(64.0f);
    }];
    [self.starsView showStars];
    
}

#pragma mark - StarsViewDelegate

- (CGRect)centerRectForStarsView:(YMStarsView *)starsView {
    return CGRectMake((SCREEN_WIDTH - 260.0f) * 0.5f, 0.0f, 260.0f, 260.0f);
}

- (CGFloat)verticalPaddingForStarsView:(YMStarsView *)starsView {
    return 50.0f;
}

- (CGFloat)horizontalPaddingForStarsView:(YMStarsView *)starsView {
    return 100.0f;
}

#pragma mark - StarsViewDataSource

- (NSArray<NSNumber *> *)starRadiusesForStarsView:(YMStarsView *)starsView {
    return @[@4, @5, @6, @2, @8 , @10];
}

- (NSUInteger)starCountForStarsView:(YMStarsView *)starsView {
    return 100;
}

@end
