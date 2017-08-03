//
//   ______    ______    ______    
//  /\  __ \  /\  ___\  /\  ___\   
//  \ \  __<  \ \  __\_ \ \  __\_ 
//   \ \_____\ \ \_____\ \ \_____\ 
//    \/_____/  \/_____/  \/_____/ 
//
//  Powered by BeeFramework
//
//
//  AppBoard_iPhone.m
//  ly_chat
//
//  Created by 王奇 on 2017/8/1.
//  Copyright © 2017年 王奇. All rights reserved.
//

#import "AppBoard_iPhone.h"
#import "Signin_Board_iPhone.h"

#pragma mark -

DEF_UI( AppBoard_iPhone, appBoard )

@implementation AppBoard_iPhone

DEF_SINGLETON( AppBoard_iPhone )

- (void)load
{
}

- (void)unload
{
}


- (void)deselectAll
{
    
}

#pragma mark Signal

ON_CREATE_VIEWS( signal )
{
    self.view.backgroundColor = [UIColor whiteColor];
  //  [self.view addSubview:bee.ui.router.view];
    self.navigationBarShown = YES;
    self.navigationBarTitle = @"首页测试" ;
 //   self.view.backgroundColor = SHORT_RGB(0x444) ;
}

ON_DELETE_VIEWS( signal )
{
}

ON_LAYOUT_VIEWS( signal )
{
}

ON_WILL_APPEAR( signal )
{
}

ON_DID_APPEAR( signal )
{
}

ON_WILL_DISAPPEAR( signal )
{
}

ON_DID_DISAPPEAR( signal )
{
}

ON_SIGNAL3( BeeUINavigationBar, LEFT_TOUCHED, signal )
{
}

ON_SIGNAL3( BeeUINavigationBar, RIGHT_TOUCHED, signal )
{
}

ON_SIGNAL3( AppBoard_iPhone, testBtn, signal )
{
    [self presentModalStack:[BeeUIStack stackWithFirstBoard:[Signin_Board_iPhone board]] animated:YES] ;
}

- (void)hideLogin
{
    [self hideModalStack];
}
- (void)hideModalStack
{
    if ( nil == self.modalStack )
    {
        return;
    }
    
    [self dismissModalStackAnimated:YES];
}

@end
