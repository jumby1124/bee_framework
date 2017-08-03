//
//  GuidePageBoard_iPhone.m
//  ezHouse
//
//  Created by apple on 16/1/28.
//  Copyright © 2016年 geek-zoo studio. All rights reserved.
//

#import "GuidePageBoard_iPhone.h"

#import "AppBoard_iPhone.h"

#define ALL_GUIDE_PAGE 6


@interface GuidePageBoard_iPhone ()<UIScrollViewDelegate>
{
    UIScrollView *scrollview;
    UIPageControl *page;
}

@end

@implementation GuidePageBoard_iPhone

SUPPORT_AUTOMATIC_LAYOUT( YES )
SUPPORT_RESOURCE_LOADING( YES )

-(void)load
{
}

-(void)unload
{
}

ON_CREATE_VIEWS( signal )
{
    [self createUI];
    [self createButton];
}

-(void)createUI
{
    scrollview = [[UIScrollView alloc]initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT)];
    scrollview.pagingEnabled = YES;
    scrollview.delegate = self;
    scrollview.contentSize = CGSizeMake(ALL_GUIDE_PAGE * SCREEN_WIDTH, SCREEN_HEIGHT);
    scrollview.showsHorizontalScrollIndicator = NO;
    
    for (int i=0; i < ALL_GUIDE_PAGE; i++) {
        NSString *imgName = [NSString stringWithFormat:@"guideImage%d.png",i+1];
        UIImageView *imgView = [[UIImageView alloc]initWithFrame:CGRectMake(i*SCREEN_WIDTH, 0, SCREEN_WIDTH, SCREEN_HEIGHT)];
        imgView.image = [UIImage imageNamed:imgName];
        [scrollview addSubview:imgView];
    }
    [self.view addSubview:scrollview];
    
    page = [[UIPageControl alloc] init];
    page.currentPageIndicatorTintColor = ezHouseColor;
    page.pageIndicatorTintColor = [UIColor grayColor];
    page.frame = CGRectMake(0, SCREEN_HEIGHT - 28, 40, 30);
    page.numberOfPages = ALL_GUIDE_PAGE ;
    [self.view insertSubview:page aboveSubview:scrollview];
}

-(void)createButton
{
    BeeUIButton *button = [[BeeUIButton alloc] init];
    button.frame = CGRectMake(SCREEN_WIDTH - 10 - 60, 25, 60, 30 );
    [button setTitle:@"跳过"];
    button.layer.cornerRadius = 8;
    button.backgroundColor = ezHouseColor;
    button.alpha = 0.75f;
    [button addTarget:self action:@selector(jumpGuidePage) forControlEvents:UIControlEventTouchUpInside];
    [self.view insertSubview:button aboveSubview:scrollview];
}

-(void)scrollViewWillBeginDragging:(UIScrollView *)scrollView
{
    if (scrollView.contentOffset.x - SCREEN_WIDTH * (ALL_GUIDE_PAGE - 1) == 0 ) {
        
        [UIApplication sharedApplication].keyWindow.rootViewController = [AppBoard_iPhone sharedInstance];
        [AppBoard_iPhone sharedInstance].allowedLandscape = NO;
    }
}

-(void)jumpGuidePage
{
    [UIApplication sharedApplication].keyWindow.rootViewController = [AppBoard_iPhone sharedInstance];
    [AppBoard_iPhone sharedInstance].allowedLandscape = NO;
}

-(void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView
{
    float currentPage = scrollview.contentOffset.x / SCREEN_WIDTH;
    page.currentPage = currentPage;
}



@end
