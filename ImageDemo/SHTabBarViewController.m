//
//  SHTabBarViewController.m
//  ImageDemo
//
//  Created by Adam Hani Schakaki on 20/08/2013.
//  Copyright (c) 2013 Shnergle. All rights reserved.
//

#import "SHTabBarViewController.h"
#import "SHSecondViewController.h"

@implementation SHTabBarViewController

- (void)tabBar:(UITabBar *)tabBar didSelectItem:(UITabBarItem *)item {
    if ([self.selectedViewController isKindOfClass:[SHSecondViewController class]]) {
        ((SHSecondViewController *)self.selectedViewController).index = self.selectedIndex;
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    ((UITabBarItem *)self.tabBar.items[1]).title = @"JPEG";
    ((UITabBarItem *)self.tabBar.items[2]).title = @"PNG";
    ((UITabBarItem *)self.tabBar.items[3]).title = @"WebP (Lossless)";
    ((UITabBarItem *)self.tabBar.items[4]).title = @"WebP";
}

@end
