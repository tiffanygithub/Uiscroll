//
//  TableTamplateSecondViewController.m
//  myapp
//
//  Created by tiffany  on 2014/5/28.
//  Copyright (c) 2014年 appscomb. All rights reserved.
//

#import "TableTamplateSecondViewController.h"
#import "SherginScrollableNavigationBar.h"
#import "SherginNavigationTableViewController.h"

@interface TableTamplateSecondViewController ()

@end

@implementation TableTamplateSecondViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    
    UINavigationController *navigationController =
    [[UINavigationController alloc] initWithNavigationBarClass:[SherginScrollableNavigationBar class] toolbarClass:nil];
    
    SherginNavigationTableViewController *tableViewController =
    [[SherginNavigationTableViewController alloc] initWithStyle:UITableViewStylePlain];
    
    [navigationController setViewControllers:@[tableViewController] animated:NO];
    
    [self addChildViewController:navigationController];
    [navigationController didMoveToParentViewController:self];
    [self.view addSubview: navigationController.view];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
