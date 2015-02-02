//
//  ViewController.m
//  alertview
//
//  Created by Pranay Shah on 1/29/15.
//  Copyright (c) 2015 Pranay Shah. All rights reserved.
//

#import "ViewController.h"

// Constants for Alert buttons 
#define OKTXT  @"OK"
#define CANCELTXT  @"Cancel"
#define BUTTON1  @"Button1"
#define BUTTON2  @"Button2"
#define BUTTON3  @"Button3"
#define ALERT @"AlertAction"
#define ACTIONSHEET @"ActionSheet"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
 * Create alert button and present to user
 *
 */
- (IBAction)alertButton:(UIButton *)sender {
//    UIAlertView *message = [[UIAlertView alloc] initWithTitle:@"Hello" message:@"This is a message" delegate:self cancelButtonTitle:@"ok" otherButtonTitles:@"button 1",@"Button2",@"Button 3", nil];
//    
//    [message show];
    
    
    UIAlertController *messageios8 = [self buildUIAlertController:ALERT];
    
    [self presentViewController:messageios8 animated:YES completion:nil];
    self.buttonPressedLable.text = @"Action button pressed";
                           
}

/*
 * Create action sheet and present to user
 *
 */
- (IBAction)actionSheetButton:(UIButton *)sender {
    
    UIAlertController *messageios8 = [self buildUIAlertController:ACTIONSHEET];
    
    [self presentViewController:messageios8 animated:YES completion:nil];
    self.buttonPressedLable.text = @"Action sheet button pressed";
}

//-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
//{
//
//
//}


// Common function that creates UIAlertController and sends it back
// takes on input - String : alertOrsheet (Alert or Action sheet style )

-(UIAlertController*)buildUIAlertController:(NSString*)alertOrsheet
{
    UIAlertController *messageios8 = [[UIAlertController alloc] init];
    if([alertOrsheet isEqualToString:ALERT])
    {
     messageios8 = [UIAlertController alertControllerWithTitle:@"Hello" message:[NSString stringWithFormat:@"This is a %@ Message",ALERT] preferredStyle:UIAlertControllerStyleAlert];
    }
    else if([alertOrsheet isEqualToString:ACTIONSHEET])
    {
     messageios8 = [UIAlertController alertControllerWithTitle:@"Hello" message:[NSString stringWithFormat:@"This is a %@ Message",ACTIONSHEET] preferredStyle:UIAlertControllerStyleActionSheet];
    }
    
    UIAlertAction *okay = [UIAlertAction actionWithTitle:OKTXT style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
        [self handleAction:action];
    }];
    
    UIAlertAction *button1 = [UIAlertAction actionWithTitle:BUTTON1 style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
        [self handleAction:action];
    }];
    
    UIAlertAction *button2 = [UIAlertAction actionWithTitle:BUTTON2 style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
        [self handleAction:action];
    }];
    
    UIAlertAction *button3 = [UIAlertAction actionWithTitle:BUTTON3 style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
        [self handleAction:action];
    }];
    
    UIAlertAction *cancle = [UIAlertAction actionWithTitle:CANCELTXT style:UIAlertActionStyleCancel handler:^(UIAlertAction *action) {
        [self handleAction:action];
    }];
    
    [messageios8 addAction:okay];
    [messageios8 addAction:cancle];
    [messageios8 addAction:button1];
    [messageios8 addAction:button2];
    [messageios8 addAction:button3];
    
    return messageios8;
}


// Handle alert button pressed

-(void)handleAction:(UIAlertAction*)action
{
    if([action.title isEqualToString:OKTXT])
    {
        NSLog(@"%@ - Button pressed",OKTXT);
    }
    else if([action.title isEqualToString:BUTTON1])
    {
        NSLog(@"%@ - Button pressed",BUTTON1);
    }
    else if([action.title isEqualToString:BUTTON2])
    {
        NSLog(@"%@ - Button pressed",BUTTON2);
    }
    else if([action.title isEqualToString:BUTTON3])
    {
        NSLog(@"%@ - Button pressed",BUTTON3);
    }
    else if([action.title isEqualToString:CANCELTXT])
    {
        NSLog(@"%@ - Button pressed",CANCELTXT);
    }
    
}

@end
