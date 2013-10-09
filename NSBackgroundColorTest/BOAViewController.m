//
//  BOAViewController.m
//  NSBackgroundColorTest
//
//  Created by Brady Archambo on 10/9/13.
//  Copyright (c) 2013 Boa. All rights reserved.
//

#import "BOAViewController.h"
#import "TestView.h"

@interface BOAViewController ()

@end

@implementation BOAViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    testView = [[TestView alloc] initWithFrame:CGRectMake(0, 0, 300, 300)];
    testView.backgroundColor = [UIColor lightGrayColor];
    
    [self.view addSubview:testView];
}

-(void)viewDidLayoutSubviews
{
    [super viewDidLayoutSubviews];
    
    testView.center = self.view.center;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
