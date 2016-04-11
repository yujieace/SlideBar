//
//  MenuViewController.m
//  SlideBar
//
//  Created by admin on 16/4/6.
//  Copyright © 2016年 huanhuba. All rights reserved.
//

#import "MenuViewController.h"
#import "MenuItem.h"
#import "ContentViewController.h"

@interface MenuViewController ()<UITableViewDelegate,UITableViewDataSource>
{
    UITableView* _menuTableView;
}
@end

@implementation MenuViewController

-(id)initWithMenuItems:(NSArray*)aMenuItems andMenuWidth:(NSInteger)width{
    self = [super init];
    if(nil != self){
        _menuItems = aMenuItems;
        _menuWidth = width;
    }
    return self;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    _menuTableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 20, _menuWidth, self.view.frame.size.height-20)];
    _menuTableView.delegate = self;
    _menuTableView.dataSource = self;
    [self.view addSubview:_menuTableView];
}
-(void)setDelegate:(id<MenuDelegator>)delegate{
    _delegate = delegate;
    UINavigationController* navVC;
    for (MenuItem* item in _menuItems) {
        navVC = (UINavigationController*)item.bindVC;
        ((ContentViewController*) [navVC.viewControllers objectAtIndex:0]).delegate = delegate;
    }
    
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return _menuItems.count;
}
-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString* reuseID = @"reuseID";
    UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:reuseID];
    if (nil == cell) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:reuseID];
        MenuItem* menu = [_menuItems objectAtIndex:indexPath.row];
        cell.textLabel.text = menu.title;
    }
    return cell;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (_delegate!= nil&&[_delegate conformsToProtocol:@protocol(MenuDelegator)]) {
        if ([_delegate respondsToSelector:@selector(onMenuItemClicked:)]) {
            [_delegate onMenuItemClicked:[_menuItems objectAtIndex:indexPath.row]];
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
