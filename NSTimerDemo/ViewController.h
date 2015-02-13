//
//  ViewController.h
//  NSTimerDemo
//
//  Created by abc on 07/02/15.
//  Copyright (c) 2015 com.TheAppGuruz. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UIAlertViewDelegate>
{
    NSInteger intcount;
    NSInteger intseconds;
    NSTimer *timer;
}
@property (weak, nonatomic) IBOutlet UILabel *lblTime;
@property (weak, nonatomic) IBOutlet UILabel *lblScore;
- (IBAction)btnPress:(id)sender;

- (void)startupGame;
- (void)subtractTime;

@end

