//
//  SUNListViewController.m
//  HumDemo
//
//  Created by  tao on 13-12-2.
//  Copyright (c) 2013年 wang. All rights reserved.
//

#import "SUNListViewController.h"

@interface SUNListViewController ()

@end

@implementation SUNListViewController

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
    
    
    
    tem=[[NSMutableArray alloc]init];
    
    if ([self.title isEqualToString:@"1111"]) {
        
        for (int i=0; i<10; i++) {
            [tem addObject:@""];
        }
    }else{
    
        for (int i=0; i<30; i++) {
            [tem addObject:@""];
        }
    }
    
    
    self.view.backgroundColor=[UIColor redColor];
     _tabelView=[[UITableView alloc]initWithFrame:CGRectMake(0, 0, 320, 460-44-40)];
    _tabelView.delegate=self;
    _tabelView.dataSource=self;
    [self.view addSubview:_tabelView];
    
 
    
    UIButton * add=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    
    add.frame=CGRectMake(0, 0, 100, 30);
    
    [self.view addSubview:add];
    
    [add addTarget:self action:@selector(add) forControlEvents:UIControlEventTouchUpInside];
	// Do any additional setup after loading the view.
}

-(void)add{

    for (int i=0; i<5; i++) {
        [tem addObject:@""];
    }
   [_tabelView  reloadData];

}
- (void)viewDidCurrentView
{
    NSLog(@"加载为当前视图 = %@",self.title);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - 表格视图数据源代理方法

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return tem.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    int row = indexPath.row;
    NSString *ListViewCellId = @"ListViewCellId";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ListViewCellId];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:ListViewCellId];
    }
    cell.textLabel.text = [NSString stringWithFormat:@"%@ 第 %d 行",self.title,row];
    
    return  cell;
}



@end
