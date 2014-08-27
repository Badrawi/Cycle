//  ViewController.h
//  TestingKIF
//
//  Created by Youssef Hatem on 8/25/14.
//  Copyright (c) 2014 ___FULLUSERNAME___. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

{
    BOOL Found,FirstTime;
    NSString *NewPListPath;
    
}

@property (nonatomic, retain) IBOutlet UILabel * Title;
@property (nonatomic, retain) IBOutlet UITextField * Entry;


-(IBAction) CheckButtonTapped       :(id)sender;
-(IBAction) AddButtonTapped         :(id)sender;
-(IBAction) DeleteButtonTapped      :(id)sender;

-(IBAction) TextFieldDoneEditing    :(id)sender;

@end
