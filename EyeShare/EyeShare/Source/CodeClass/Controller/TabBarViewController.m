//
//  TabBarViewController.m
//  EyeShare
//
//  Created by lanou3g on 15/10/14.
//  Copyright (c) 2015年 ShengLi. All rights reserved.
//

#import "TabBarViewController.h"

@interface TabBarViewController ()

@end

@implementation TabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UINavigationController *firstNC = [[UINavigationController alloc]initWithRootViewController:[[FirstTableViewController alloc]init]];
    firstNC.tabBarItem = [[UITabBarItem alloc]initWithTitle:@"first" image:nil tag:101];
    
    UINavigationController *secondNC = [[UINavigationController alloc]initWithRootViewController:[[SecondTableViewController alloc]init]];
    secondNC.tabBarItem = [[UITabBarItem alloc]initWithTitle:@"second" image:nil tag:102 ];
    UINavigationController *thirdNC = [[UINavigationController alloc]initWithRootViewController:[[ThirdViewController alloc]init]];
    thirdNC.tabBarItem = [[UITabBarItem alloc]initWithTitle:@"third" image:nil tag:103];
    UINavigationController *fourNC = [[UINavigationController alloc]initWithRootViewController:[[FourTableViewController alloc]init]];
    fourNC.tabBarItem.title = @"four";

    
    self.viewControllers = @[firstNC,secondNC,thirdNC,fourNC];
    self.selectedIndex = 0;
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
