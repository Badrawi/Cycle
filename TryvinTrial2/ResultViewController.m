//
//  ResultViewController.m
//  TestingKIF
//
//  Created by Youssef Hatem on 8/25/14.
//  Copyright (c) 2014 Youssef Hatem. All rights reserved.
//

#import "ResultViewController.h"
#import "ViewController.h"

@interface ResultViewController ()

@end

@implementation ResultViewController



@synthesize Result = Result_;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIBarButtonItem *btnBack = [[UIBarButtonItem alloc]
                                initWithTitle:@"Back"
                                style:UIBarButtonItemStyleBordered
                                target:self
                                action:@selector(OnClick_btnBack:)];
    self.navigationItem.leftBarButtonItem = btnBack;
    
    
    /*UIBarButtonItem *backButton = [[UIBarButtonItem alloc]
                                   initWithTitle: @"Back"
                                   style:UIBarButtonItemStyleBordered
                                   target:nil
                                   action:nil];
    [[self navigationItem] setBackBarButtonItem:backButton];
    
    self.navigationItem.backBarButtonItem.isAccessibilityElement = YES;
    
    self.navigationItem.backBarButtonItem.AccessibilityLabel = @"BackButton" ;
    */
    self.navigationItem.leftBarButtonItem.accessibilityLabel = @"BackButton";
    [self.Result setText:self.ResultHolder];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



-(IBAction)OnClick_btnBack:(id)sender  {
    [self.navigationController popViewControllerAnimated:YES];
    //[self.navigationController pushViewController:self.navigationController.parentViewController animated:YES];
}
/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
 {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

@end
