//
//  SUNSlideSwitchDemoViewController.m
//  HumDemo
//
//  Created by  tao on 13-12-2.
//  Copyright (c) 2013年 wang. All rights reserved.
//

#import "SUNSlideSwitchDemoViewController.h"

@interface SUNSlideSwitchDemoViewController ()

@end

@implementation SUNSlideSwitchDemoViewController
@synthesize vc1;
@synthesize vc2,vc3,vc4,vc5,vc6;
@synthesize slideSwitchView;
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    self.title = @"滑动切换视图";
    self.slideSwitchView=[[SUNSlideSwitchView alloc]initWithFrame:CGRectMake(0, 0, 320, 460)];
    self.slideSwitchView.slideSwitchViewDelegate=self;
    [self.view addSubview:self.slideSwitchView];
    
    
    self.slideSwitchView.tabItemNormalColor = [SUNSlideSwitchView colorFromHexRGB:@"868686"];
    self.slideSwitchView.tabItemSelectedColor = [SUNSlideSwitchView colorFromHexRGB:@"bb0b15"];
    self.slideSwitchView.shadowImage = [[UIImage imageNamed:@"red_line_and_shadow.png"]
                                        stretchableImageWithLeftCapWidth:59.0f topCapHeight:0.0f];
    
    
    self.vc1 = [[SUNListViewController alloc] init];
    self.vc1.title = @"1111";
    
    self.vc2 = [[SUNListViewController alloc] init];
    self.vc2.title = @"2222";
    
    self.vc3 = [[SUNListViewController alloc] init];
    self.vc3.title = @"3333";
    
    self.vc4 = [[SUNListViewController alloc] init];
    self.vc4.title = @"4444";
    
    self.vc5 = [[SUNListViewController alloc] init];
    self.vc5.title = @"5555";
    
    self.vc6 = [[SUNListViewController alloc] init];
    self.vc6.title = @"6666";
    
    UIButton *rightSideButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [rightSideButton setImage:[UIImage imageNamed:@"icon_rightarrow.png"] forState:UIControlStateNormal];
    [rightSideButton setImage:[UIImage imageNamed:@"icon_rightarrow.png"]  forState:UIControlStateHighlighted];
    rightSideButton.frame = CGRectMake(0, 0, 20.0f, 44.0f);
    rightSideButton.userInteractionEnabled = NO;
    self.slideSwitchView.rigthSideButton = rightSideButton;
    
    [self.slideSwitchView buildUI];
    
    
}
#pragma mark - 滑动tab视图代理方法

- (NSUInteger)numberOfTab:(SUNSlideSwitchView *)view
{
    return 6;
}

- (UIViewController *)slideSwitchView:(SUNSlideSwitchView *)view viewOfTab:(NSUInteger)number
{
    if (number == 0) {
        return self.vc1;
    } else if (number == 1) {
        return self.vc2;
    } else if (number == 2) {
        return self.vc3;
    } else if (number == 3) {
        return self.vc4;
    } else if (number == 4) {
        return self.vc5;
    } else if (number == 5) {
        return self.vc6;
    } else {
        return nil;
    }
}

- (void)slideSwitchView:(SUNSlideSwitchView *)view panLeftEdge:(UIPanGestureRecognizer *)panParam
{
//    SUNViewController *drawerController = (SUNViewController *)self.navigationController.mm_drawerController;
//    [drawerController panGestureCallback:panParam];
}

- (void)slideSwitchView:(SUNSlideSwitchView *)view didselectTab:(NSUInteger)number
{
    SUNListViewController *vc = nil;
    if (number == 0) {
        vc = self.vc1;
    } else if (number == 1) {
        vc = self.vc2;
    } else if (number == 2) {
        vc = self.vc3;
    } else if (number == 3) {
        vc = self.vc4;
    } else if (number == 4) {
        vc = self.vc5;
    } else if (number == 5) {
        vc = self.vc6;
    }
    [vc viewDidCurrentView];
}

#pragma mark - 内存报警


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
