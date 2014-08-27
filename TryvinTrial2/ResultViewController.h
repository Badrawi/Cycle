//
//  ResultViewController.h
//  TestingKIF
//
//  Created by Youssef Hatem on 8/25/14.
//  Copyright (c) 2014 Youssef Hatem. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface ResultViewController : UIViewController
{
    UITextView *Result_;
    
}

@property (nonatomic,retain) IBOutlet UITextView * Result;
@property (nonatomic,retain) NSString *ResultHolder;
@property (nonatomic,retain) IBOutlet UIBarButtonItem *bar;

@end
