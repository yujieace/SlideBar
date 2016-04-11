//
//  MenuViewController.h
//  SlideBar
//
//  Created by admin on 16/4/6.
//  Copyright © 2016年 huanhuba. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MenuDelegator.h"

@interface MenuViewController : UIViewController

-(id)initWithMenuItems:(NSArray*)aMenuItems andMenuWidth:(NSInteger)width;

@property(nonatomic,strong)NSArray* menuItems;
@property(nonatomic,assign)NSInteger menuWidth;
@property(nonatomic,weak)id<MenuDelegator>delegate;

@end
