//
//    ██╗  ██╗██╗███╗   ██╗ ██████╗ ███████╗███████╗██╗   ██╗███████╗
//    ██║ ██╔╝██║████╗  ██║██╔════╝ ╚══███╔╝██╔════╝██║   ██║██╔════╝
//    █████╔╝ ██║██╔██╗ ██║██║  ███╗  ███╔╝ █████╗  ██║   ██║███████╗
//    ██╔═██╗ ██║██║╚██╗██║██║   ██║ ███╔╝  ██╔══╝  ██║   ██║╚════██║
//    ██║  ██╗██║██║ ╚████║╚██████╔╝███████╗███████╗╚██████╔╝███████║
//    ╚═╝  ╚═╝╚═╝╚═╝  ╚═══╝ ╚═════╝ ╚══════╝╚══════╝ ╚═════╝ ╚══════╝
//
//	Powered by Yefei Fan,2015
//

#import "BaseBoard_iPhone.h"

#pragma mark -

@implementation BaseBoard_iPhone

#pragma mark -

- (void)load
{
}

ON_CREATE_VIEWS( signal )
{
    
}

ON_DELETE_VIEWS( signal )
{
}

ON_WILL_APPEAR( signal )
{
//	[MobClick beginLogPageView:[[self class] description]];
}

ON_WILL_DISAPPEAR( signal )
{
//	[MobClick endLogPageView:[[self class] description]];
}

@end
