//
//  ViewController.m
//  Mshequ
//
//  Created by Cheng Ma on 24/07/2015.
//  Copyright (c) 2015 Cheng Ma. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"123");
  self.view.backgroundColor=[UIColor redColor];
    UIButton*btn=[UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame=CGRectMake(10, 30, 50, 50);
    [btn setTitle:@"nihao" forState:UIControlStateNormal];
    btn.backgroundColor=[UIColor redColor];
    [self.view addSubview:btn];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
