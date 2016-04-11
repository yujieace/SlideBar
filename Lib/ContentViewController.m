//
//  ContentViewController.m
//  SlideBar
//
//  Created by admin on 16/4/6.
//  Copyright © 2016年 huanhuba. All rights reserved.
//

#import "ContentViewController.h"

@interface ContentViewController ()

@end

@implementation ContentViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor greenColor];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc]initWithTitle:@"主菜单" style:UIBarButtonItemStylePlain target:self action:@selector(showMasterMenu)];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}
-(void)showMasterMenu{
    if (_delegate!= nil&&[_delegate conformsToProtocol:@protocol(MenuDelegator)]) {
        if ([_delegate respondsToSelector:@selector(showMenu)]) {
            [_delegate showMenu];
        }
    }
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
