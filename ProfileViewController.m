//
//  ProfileViewController.m
//  Mshequ
//
//  Created by Cheng Ma on 24/07/2015.
//  Copyright (c) 2015 Cheng Ma. All rights reserved.
//

#import "ProfileViewController.h"

@interface ProfileViewController ()

@end

@implementation ProfileViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    NSMutableArray *texts = [[NSMutableArray alloc] initWithObjects:@"1",@"2",@"3",@"4",@"5",@"6",nil];
    NSLog( @"%lu",(unsigned long)[texts count]);
    int init_X = 5;
    int init_Y = SCREEN_HEIGHT/2;
    for (int i=0; i<[texts count]; i++)
    {
        UIButton *user = [UIButton buttonWithType:UIButtonTypeCustom];
        user.frame = CGRectMake(init_X, init_Y+(i/3)*70, 60, 60);
        user.backgroundColor = [UIColor blueColor];
        [user setTitle:[texts objectAtIndex:i] forState:UIControlStateNormal];
        [self.view addSubview:user];
        init_X += SCREEN_WIDTH/3+5;
        if (init_X>SCREEN_WIDTH) {
            init_X = 5;
        }
    }
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
