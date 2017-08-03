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
//  AppBoard_iPhone.h
//  ly_chat
//
//  Created by 王奇 on 2017/8/1.
//  Copyright © 2017年 王奇. All rights reserved.
//

#import "Bee.h"

#pragma mark -

AS_UI( AppBoard_iPhone, appBoard )

#pragma mark -


@interface AppBoard_iPhone : BeeUIBoard

AS_SINGLETON( AppBoard_iPhone )


- (void)showLogin;
- (void)hideLogin;

@end
