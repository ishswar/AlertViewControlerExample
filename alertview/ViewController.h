//
//  ViewController.h
//  alertview
//
//  Created by Pranay Shah on 1/29/15.
//  Copyright (c) 2015 Pranay Shah. All rights reserved.
//

#import <UIKit/UIKit.h>



@interface ViewController : UIViewController

- (IBAction)alertButton:(UIButton *)sender;
- (IBAction)actionSheetButton:(UIButton *)sender;
@property (strong, nonatomic) IBOutlet UITextField *buttonPressedLable;

@end

