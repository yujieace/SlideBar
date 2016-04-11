//
//  SlideBarViewController.h
//  SlideBar
//
//  Created by admin on 16/4/6.
//  Copyright © 2016年 huanhuba. All rights reserved.
//

#import <UIKit/UIKit.h>

@class MenuViewController;
@interface SlideBarViewController : UIViewController

@property(nonatomic,strong)MenuViewController* menu;

-(id)initWithMenu:(MenuViewController*)aMenu;

@end
