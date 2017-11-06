//
//  ViewController.m
//  DashLine
//
//  Created by Apple on 2017/11/6.
//  Copyright © 2017年 Apple. All rights reserved.
//

#import "ViewController.h"
#import "ZGDashline.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    ZGDashline *verticalDashLine = [[ZGDashline alloc] initWithFrame:CGRectMake(10, 75+15, 0.5, 100) withLineLength:6 withLineSpacing:3 withLineColor:[UIColor redColor] type:ZGDashlineVerticalType];
    
       ZGDashline *horizontalDashLine = [[ZGDashline alloc] initWithFrame:CGRectMake(10, 75+15, 500, 1) withLineLength:6 withLineSpacing:3 withLineColor:[UIColor redColor] type:ZGDashlineHorizontalType];
     [self.view addSubview:horizontalDashLine];
    [self.view addSubview:verticalDashLine];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
