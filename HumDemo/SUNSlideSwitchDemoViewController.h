//
//  SUNSlideSwitchDemoViewController.h
//  HumDemo
//
//  Created by  tao on 13-12-2.
//  Copyright (c) 2013年 wang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SUNListViewController.h"
#import "SUNSlideSwitchView.h"
//#import "SUNViewController.h"
@interface SUNSlideSwitchDemoViewController : UIViewController<SUNSlideSwitchViewDelegate>

{

    SUNListViewController *_vc1;
    SUNListViewController *_vc2;
    SUNListViewController *_vc3;
    SUNListViewController *_vc4;
    SUNListViewController *_vc5;
    SUNListViewController *_vc6;


}
@property (nonatomic,strong) SUNSlideSwitchView *slideSwitchView;

@property (nonatomic, strong) SUNListViewController *vc1;
@property (nonatomic, strong) SUNListViewController *vc2;
@property (nonatomic, strong) SUNListViewController *vc3;
@property (nonatomic, strong) SUNListViewController *vc4;
@property (nonatomic, strong) SUNListViewController *vc5;
@property (nonatomic, strong) SUNListViewController *vc6;

@end
