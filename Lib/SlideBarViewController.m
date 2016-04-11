//
//  SlideBarViewController.m
//  SlideBar
//
//  Created by admin on 16/4/6.
//  Copyright © 2016年 huanhuba. All rights reserved.
//

#import "SlideBarViewController.h"
#import "MenuViewController.h"
#import "MenuDelegator.h"
#import "MenuItem.h"
#import "ContentViewController.h"


@interface SlideBarViewController ()<MenuDelegator>
{
    UIView* _menuView;
    UIView* _contentView;
    MenuViewController* _menuVC;
    UIViewController* _contentVC;
}
@end

@implementation SlideBarViewController

-(id)initWithMenu:(MenuViewController*)aMenu{
    self = [super init];
    _menuVC = aMenu;
    _menuVC.delegate = self;
    return self;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    _menuView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, _menuVC.menuWidth, self.view.frame.size.height)];
    _menuView.backgroundColor = [UIColor grayColor];
    _contentView = [[UIView alloc]initWithFrame:self.view.bounds];
    [_menuView addSubview:_menuVC.view];
    [self.view addSubview:_menuView];
    [self.view addSubview:_contentView];
    [self onMenuItemClicked:[_menuVC.menuItems objectAtIndex:0]];
}

-(void)onMenuItemClicked:(MenuItem*)item{
    if (nil == _contentVC) {
        [self addChildViewController:item.bindVC];
        _contentVC = item.bindVC;
    }else if(_contentVC != item.bindVC){
        [self addChildViewController:item.bindVC];
        [self transitionFromViewController:_contentVC toViewController:item.bindVC duration:0.3f options:UIViewAnimationOptionCurveEaseIn animations:nil completion:^(BOOL finished) {
            [_contentVC willMoveToParentViewController:nil];
            [_contentVC removeFromParentViewController];
            [_contentVC.view removeFromSuperview];
            
            [item.bindVC willMoveToParentViewController:self];
            _contentVC = item.bindVC;
            
        }];
    }
    
    [_contentView addSubview:_contentVC.view];
    [self hideMenu];
}
-(void)showMenu{
   
    [UIView animateWithDuration:0.3f animations:^(void){
        CGAffineTransform content_tranefrom  = CGAffineTransformIdentity;
        content_tranefrom = CGAffineTransformTranslate(content_tranefrom, _menuVC.menuWidth,0);
        _contentView.transform = content_tranefrom;
    }];
    
   
    
    
}
-(void)hideMenu{
   
    
    [UIView animateWithDuration:0.3f animations:^(void){
        CGAffineTransform content_tranefrom  = CGAffineTransformIdentity;
        content_tranefrom = CGAffineTransformTranslate(content_tranefrom, 0,0);
        _contentView.transform = content_tranefrom;
    }];

    
    
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
