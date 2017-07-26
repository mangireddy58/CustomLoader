//
//  ViewController.m
//  MangoSpinner
//
//  Created by Rushikesh Kulkarni on 26/07/17.
//  Copyright © 2017 simplicity. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self addProgressIndicator];
    [self hideProgressIndicator];
}


#pragma mark - Show loader
- (IBAction)showAction:(id)sender {
    [self showProgressIndicator];
}
#pragma mark - Hide loader
- (IBAction)hideAction:(id)sender {
//    [self hideProgressIndicator];
}
@end
