//
//  MenuItem.m
//  SlideBar
//
//  Created by admin on 16/4/6.
//  Copyright © 2016年 huanhuba. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MenuItem.h"

@implementation MenuItem

-(id)initWithTitle:(NSString*)aTitle andItemId:(NSInteger)aItemId andBindVC:(ContentViewController*)aVC{
    self = [super init];
    if (nil != self) {
        _title = aTitle;
        _itemId = aItemId;
        UIViewController * temp =(UIViewController*)aVC;
        temp.title = aTitle;
        _bindVC = [[UINavigationController alloc]initWithRootViewController:temp];
    }
    return self;
}
@end
