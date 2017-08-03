//
//	 ______    ______    ______    
//	/\  __ \  /\  ___\  /\  ___\   
//	\ \  __<  \ \  __\_ \ \  __\_ 
//	 \ \_____\ \ \_____\ \ \_____\ 
//	  \/_____/  \/_____/  \/_____/ 
//
//	Powered by BeeFramework
//
//
//  Signin_Board_iPhone.m
//  ly_chat
//
//  Created by 王奇 on 2017/8/3.
//  Copyright © 2017年 王奇. All rights reserved.
//

#import "Signin_Board_iPhone.h"
#import "AppBoard_iPhone.h"

#pragma mark -

@interface Signin_Board_iPhone()
{
	
}
@end

@implementation Signin_Board_iPhone

SUPPORT_AUTOMATIC_LAYOUT( YES )
SUPPORT_RESOURCE_LOADING( YES )

- (void)load
{
}

- (void)unload
{
}

#pragma mark - Signal

ON_CREATE_VIEWS( signal )
{
    self.navigationBarShown = YES ;
    self.navigationBarTitle = __TEXT(@"testBtn") ;
    self.navigationBarLeft = @"返回" ;
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
    if (bee.ui.appBoard.modalStack) {
        [bee.ui.appBoard hideLogin];
    }else{
        [self.stack popToFirstBoardAnimated:YES];
    }
}

ON_SIGNAL3( BeeUINavigationBar, RIGHT_TOUCHED, signal )
{
}

@end
