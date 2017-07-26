//
//  GlobalViewController.m
//  MangoSpinner
//
//  Created by Rushikesh Kulkarni on 26/07/17.
//  Copyright © 2017 simplicity. All rights reserved.
//

#import "GlobalViewController.h"

#define FONTNAME_LIGHT @"AppleSDGothicNeo-Regular"
#define LFONT_15     [UIFont fontWithName:FONTNAME_LIGHT size:15]

@interface GlobalViewController ()

@end

@implementation GlobalViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

#pragma mark - Show Progressindicator
- (void) showProgressIndicator {
    mViewLoading.hidden = NO;
    mImageViewLoading.hidden = NO;
    mLabelLoading.hidden = NO;
    [spinner startAnimating];
    [self.view bringSubviewToFront:mViewLoading];
    [self.view bringSubviewToFront:mImageViewLoading];
    [self.view bringSubviewToFront:mLabelLoading];
    [self.view bringSubviewToFront:spinner];
    self.view.userInteractionEnabled = NO;
}
#pragma mark - Addprogressindicator
- (void) addProgressIndicator {
    spinner = [[RTSpinKitView alloc] initWithStyle:RTSpinKitViewStyleFadingCircleAlt color:[UIColor whiteColor]];
    mViewLoading  = [[UIView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height)];
    mImageViewLoading = [[UIImageView alloc] initWithFrame:CGRectMake(([UIScreen mainScreen].bounds.size.width/2)-(156/2), ([UIScreen mainScreen].bounds.size.height/2)-(124/2), 156, 124)];
    mLabelLoading = [[UILabel alloc] initWithFrame:CGRectMake(([UIScreen mainScreen].bounds.size.width/2) - (127/2), ([UIScreen mainScreen].bounds.size.height/2) + 5, 127, 50)];
    mViewLoading.alpha = 0.5;
    mViewLoading.backgroundColor = [UIColor blackColor];
    [self.view addSubview:mViewLoading];
    mImageViewLoading.image = [UIImage imageNamed:@"bg_loading.png"];
    [self.view addSubview:mImageViewLoading];
    [self.view addSubview:mLabelLoading];
    [self.view addSubview:spinner];
    
    mLabelLoading.numberOfLines = 2;
    mLabelLoading.textAlignment = NSTextAlignmentCenter;
    mLabelLoading.backgroundColor = [UIColor clearColor];
    mLabelLoading.textColor = [UIColor whiteColor];
    mLabelLoading.font = LFONT_15;
    mLabelLoading.text = NSLocalizedString(@"processing", nil);
}
#pragma mark - Hide Progressindicator
- (void) hideProgressIndicator {
    mViewLoading.hidden = YES;
    mImageViewLoading.hidden = YES;
    mLabelLoading.hidden = YES;
    [spinner stopAnimating];
    self.view.userInteractionEnabled = YES;
}
#pragma mark - ProgressWith Message
- (void)showProgressIndicatorWithMessage:(NSString*)loadingStr{
    mViewLoading.hidden = NO;
    mImageViewLoading.hidden = NO;
    mLabelLoading.hidden = NO;
    mLabelLoading.text = loadingStr;
    [spinner startAnimating];
    [self.view bringSubviewToFront:mViewLoading];
    [self.view bringSubviewToFront:mImageViewLoading];
    [self.view bringSubviewToFront:mLabelLoading];
    [self.view bringSubviewToFront:spinner];
    self.view.userInteractionEnabled = NO;
}

@end
