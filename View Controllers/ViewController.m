//
//  ViewController.m
//  NSTimerDemo
//
//  Created by abc on 07/02/15.
//  Copyright (c) 2015 com.TheAppGuruz. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize lblScore,lblTime;

#pragma mark - View Life Cycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self startupGame];
}

#pragma mark - Game start method

- (void)startupGame
{
    intcount = 0;
    intseconds = 30;
    
    lblTime.text = [NSString stringWithFormat:@"Time: %li", (long)intseconds];
    lblScore.text = [NSString stringWithFormat:@"Score:%li", (long)intcount];
    
    timer = [NSTimer scheduledTimerWithTimeInterval:1.0f
                                             target:self
                                           selector:@selector(subtractTime)
                                           userInfo:nil
                                            repeats:YES];
}

#pragma mark - Timer Method

- (void)subtractTime
{
    intseconds--;
    lblTime.text = [NSString stringWithFormat:@"Time: %li",(long)intseconds];
    
    if (intseconds == 0)
    {
        [timer invalidate];
   
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Time is up!"
                                                    message:[NSString stringWithFormat:@"You scored %li points", (long)intcount]
                                                   delegate:self
                                          cancelButtonTitle:@"Play Again"
                                          otherButtonTitles:nil];
    
        [alert show];
    }
}
- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    [self startupGame];
}

#pragma mark - Button press Method

- (IBAction)btnPress:(id)sender
{
    intcount = intcount+1;
    lblScore.text = [NSString stringWithFormat:@"Score:%li", (long)intcount];
}
@end
