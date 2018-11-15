//
//  ViewController.m
//  Shadow
//
//  Created by Qi Wang on 2018/11/15.
//  Copyright © 2018 Qi Wang. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIView *shadowView = [[UIView alloc]initWithFrame:CGRectMake(60, 60, 100, 100)];
    shadowView.backgroundColor = UIColor.blueColor;
    shadowView.userInteractionEnabled = YES;
    shadowView.layer.cornerRadius = 50;
    shadowView.layer.shadowOffset = CGSizeMake(1, 5);
    shadowView.layer.shadowOpacity = 0.8;
    shadowView.layer.shadowColor = [UIColor lightGrayColor].CGColor;
    //shadowView.layer.masksToBounds = NO;
    [self.view addSubview:shadowView];
    
    UIButton *messageBt = [UIButton buttonWithType:UIButtonTypeSystem];
    [messageBt setFrame:CGRectMake(0, 0, 100, 100)];
    [messageBt setBackgroundColor:UIColor.cyanColor];
    [messageBt setTitle:@"button" forState:UIControlStateNormal];
    messageBt.layer.cornerRadius = 50;
    messageBt.layer.masksToBounds = YES;
    [shadowView addSubview: messageBt];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
