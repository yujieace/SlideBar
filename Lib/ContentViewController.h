//
//  ContentViewController.h
//  SlideBar
//
//  Created by admin on 16/4/6.
//  Copyright © 2016年 huanhuba. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MenuDelegator.h"
@interface ContentViewController : UIViewController
@property(nonatomic,weak)id<MenuDelegator>delegate;
@end
