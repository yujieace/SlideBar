//
//  MenuDelegator.h
//  SlideBar
//
//  Created by admin on 16/4/6.
//  Copyright © 2016年 huanhuba. All rights reserved.
//

#import <Foundation/Foundation.h>

@class MenuItem;
@protocol MenuDelegator <NSObject>
-(void)onMenuItemClicked:(MenuItem*)item;
-(void)showMenu;
@end
