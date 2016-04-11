//
//  MenuItem.h
//  SlideBar
//
//  Created by admin on 16/4/6.
//  Copyright © 2016年 huanhuba. All rights reserved.
//

#import <Foundation/Foundation.h>

@class UINavigationController;
@class ContentViewController;
@interface MenuItem : NSObject

@property(nonatomic,copy) NSString* title;
@property(nonatomic,assign) NSInteger itemId;
@property(nonatomic,strong) UINavigationController* bindVC;

-(id)initWithTitle:(NSString*)aTitle andItemId:(NSInteger)aItemId andBindVC:(ContentViewController*)aVC;

@end
