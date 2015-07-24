//
//  LoginViewController.m
//  Mshequ
//
//  Created by Cheng Ma on 24/07/2015.
//  Copyright (c) 2015 Cheng Ma. All rights reserved.
//

#import "LoginViewController.h"

@interface LoginViewController ()

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIButton *recruit = [UIButton buttonWithType:UIButtonTypeCustom];
    recruit.frame = CGRectMake(SCREEN_WIDTH/2-30, SCREEN_HEIGHT/3, 60, 60);
    recruit.backgroundColor = [UIColor blueColor];
    [recruit setTitle:@"发活" forState:UIControlStateNormal];
    
    UIButton *seek = [UIButton buttonWithType:UIButtonTypeCustom];
    seek.frame = CGRectMake(SCREEN_WIDTH/2-30, SCREEN_HEIGHT/3+70, 60, 60);
    seek.backgroundColor = [UIColor blueColor];
    [seek setTitle:@"找活" forState: UIControlStateNormal];
    
    UIButton *profile = [UIButton buttonWithType:UIButtonTypeCustom];
    profile.frame = CGRectMake(SCREEN_WIDTH/5*4, 20, 60, 60);
    profile.backgroundColor = [UIColor blueColor];
    [profile setTitle:@"个人" forState: UIControlStateNormal];
    
    [self.view addSubview:recruit];
    [self.view addSubview:seek];
    [self.view addSubview:profile];
    
    NSLog(@"%lf,%lf",SCREEN_WIDTH,SCREEN_HEIGHT);
    
    [recruit addTarget:self action:@selector(toRecruit) forControlEvents:UIControlEventTouchUpInside];
    [seek addTarget:self action:@selector(toSeek) forControlEvents:UIControlEventTouchUpInside];
    [profile addTarget:self action:@selector(toProfile) forControlEvents:UIControlEventTouchUpInside];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)toRecruit{
    NSLog(@"发活");
}

- (void)toSeek{
    NSLog(@"找活");
}

- (void)toProfile{
    NSLog(@"个人信息");
    ProfileViewController *profileViewController = [[ProfileViewController alloc]init];
    [[[UIApplication sharedApplication] delegate] window].rootViewController = profileViewController;
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
