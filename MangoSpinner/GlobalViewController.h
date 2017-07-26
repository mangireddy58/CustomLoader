//
//  GlobalViewController.h
//  MangoSpinner
//
//  Created by Rushikesh Kulkarni on 26/07/17.
//  Copyright © 2017 simplicity. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "RTSpinKitView.h"

@interface GlobalViewController : UIViewController
{
    IBOutlet UIView      *mViewLoading;
    IBOutlet UIImageView *mImageViewLoading;
    IBOutlet UILabel     *mLabelLoading;
    RTSpinKitView *spinner;
}
- (void) showProgressIndicator;
- (void) addProgressIndicator;
- (void) hideProgressIndicator;
- (void)showProgressIndicatorWithMessage:(NSString*)loadingStr;
@end
