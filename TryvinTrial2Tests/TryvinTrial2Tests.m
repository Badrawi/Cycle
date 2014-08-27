//
//  TryvinTrial2Tests.m
//  TryvinTrial2Tests
//
//  Created by Mohamed Ragab Ismail on 8/21/14.
//  Copyright (c) 2014 OS. All rights reserved.
//

#import <XCTest/XCTest.h>
#import <KIF/KIF.h>
#import <KIFTestStepValidation.h>
#import <Foundation/Foundation.h>
#import "ViewController.h"





@interface TryvinTrial2Tests : KIFTestCase


- (void)CheckTest;
-(void)AddTest;
-(void)DeleteTest;

@end

@implementation TryvinTrial2Tests

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}


- (void)beforeAll
{
    self.CheckTest;
    self.AddTest;
    self.DeleteTest;
}


- (void)CheckTest
{
    
    //[tester longPressViewWithAccessibilityLabel:@"Greeting" value:@"Hello" duration:2];
    [tester tapViewWithAccessibilityLabel:@"EntryTextField"];
    [tester enterTextIntoCurrentFirstResponder:@"Ragab"];
    [tester waitForViewWithAccessibilityLabel:@"EntryTextField" value:@"Ragab" traits:UIAccessibilityTraitNone];
    
    [tester tapViewWithAccessibilityLabel:@"CheckButton"];
    [tester waitForViewWithAccessibilityLabel:@"Result"];
    [tester waitForViewWithAccessibilityLabel:@"Result" value:@"This person works at Tryvin." traits:UIAccessibilityTraitNone];
    

    [tester tapViewWithAccessibilityLabel:@"BackButton"];
    [tester waitForViewWithAccessibilityLabel:@"CheckButton"];
    
    NSLog(@"done");
}

- (void)AddTest
{
    
    //[tester longPressViewWithAccessibilityLabel:@"Greeting" value:@"Hello" duration:2];
    [tester tapViewWithAccessibilityLabel:@"EntryTextField"];
    [tester enterTextIntoCurrentFirstResponder:@"Added sample for test"];
    [tester waitForViewWithAccessibilityLabel:@"EntryTextField" value:@"Added sample for test" traits:UIAccessibilityTraitNone];
    
    [tester tapViewWithAccessibilityLabel:@"AddButton"];
    
    [tester tapViewWithAccessibilityLabel:@"EntryTextField"];
    [tester enterTextIntoCurrentFirstResponder:@"Added sample for test"];
    [tester waitForViewWithAccessibilityLabel:@"EntryTextField" value:@"Added sample for test" traits:UIAccessibilityTraitNone];
    
    [tester tapViewWithAccessibilityLabel:@"CheckButton"];
    [tester waitForViewWithAccessibilityLabel:@"Result"];
    [tester waitForViewWithAccessibilityLabel:@"Result" value:@"This person works at Tryvin." traits:UIAccessibilityTraitNone];
    

}

- (void)DeleteTest
{
    
    //[tester longPressViewWithAccessibilityLabel:@"Greeting" value:@"Hello" duration:2];
    [tester tapViewWithAccessibilityLabel:@"EntryTextField"];
    [tester enterTextIntoCurrentFirstResponder:@"Ragab"];
    [tester waitForViewWithAccessibilityLabel:@"EntryTextField" value:@"Ragab" traits:UIAccessibilityTraitNone];
    
    [tester tapViewWithAccessibilityLabel:@"DeleteButton"];
    
    self.CheckTest;
}


@end
