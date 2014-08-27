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


- (void)CheckFor:(NSString *)Name;
- (void)testAdd;
- (void)testDelete;

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
    
    NSLog(@"TEST STARTED !");
}


- (void)testCheck
{
    [tester tapViewWithAccessibilityLabel:@"EntryTextField"];
    
    [tester clearTextFromAndThenEnterText:@"Ragab" intoViewWithAccessibilityLabel:@"EntryTextField"];
    
    [tester waitForViewWithAccessibilityLabel:@"EntryTextField" value:@"Ragab" traits:UIAccessibilityTraitNone];
    
    [tester tapViewWithAccessibilityLabel:@"CheckButton"];
    [tester waitForViewWithAccessibilityLabel:@"Result"];
    [tester waitForViewWithAccessibilityLabel:@"Result" value:@"This person works at Tryvin." traits:UIAccessibilityTraitNone];
    
    
    [tester tapViewWithAccessibilityLabel:@"BackButton"];
    
    
    NSLog(@"done");
}

- (void)testAdd
{
    
    //[tester longPressViewWithAccessibilityLabel:@"Greeting" value:@"Hello" duration:2];
    [tester tapViewWithAccessibilityLabel:@"EntryTextField"];
    [tester clearTextFromAndThenEnterText:@"Added sample for test" intoViewWithAccessibilityLabel:@"EntryTextField"];
    [tester waitForViewWithAccessibilityLabel:@"EntryTextField" value:@"Added sample for test" traits:UIAccessibilityTraitNone];
    
    [tester tapViewWithAccessibilityLabel:@"AddButton"];
    
    [tester tapViewWithAccessibilityLabel:@"EntryTextField"];
    [tester clearTextFromAndThenEnterText:@"Added sample for test" intoViewWithAccessibilityLabel:@"EntryTextField"];
    //[tester enterTextIntoCurrentFirstResponder:@"Added sample for test"];
    [tester waitForViewWithAccessibilityLabel:@"EntryTextField" value:@"Added sample for test" traits:UIAccessibilityTraitNone];
    
    [tester tapViewWithAccessibilityLabel:@"CheckButton"];
    [tester waitForViewWithAccessibilityLabel:@"Result"];
    [tester waitForViewWithAccessibilityLabel:@"Result" value:@"This person works at Tryvin." traits:UIAccessibilityTraitNone];
    
    [tester tapViewWithAccessibilityLabel:@"BackButton"];
    
    
}

- (void)testDelete
{
    
    [tester tapViewWithAccessibilityLabel:@"EntryTextField"];
    [tester clearTextFromAndThenEnterText:@"Ragab" intoViewWithAccessibilityLabel:@"EntryTextField"];
    [tester waitForViewWithAccessibilityLabel:@"EntryTextField" value:@"Ragab" traits:UIAccessibilityTraitNone];
    [tester tapViewWithAccessibilityLabel:@"DeleteButton"];
    
    
    [tester tapViewWithAccessibilityLabel:@"EntryTextField"];
    [tester clearTextFromAndThenEnterText:@"Ragab" intoViewWithAccessibilityLabel:@"EntryTextField"];
    [tester waitForViewWithAccessibilityLabel:@"EntryTextField" value:@"Ragab" traits:UIAccessibilityTraitNone];
    [tester tapViewWithAccessibilityLabel:@"CheckButton"];
    [tester waitForViewWithAccessibilityLabel:@"Result"];
    [tester waitForViewWithAccessibilityLabel:@"Result" value:@"This person is an intruder." traits:UIAccessibilityTraitNone];
    [tester tapViewWithAccessibilityLabel:@"BackButton"];
    
}


- (void)CheckFor:(NSString *)Name
{
    
    [tester tapViewWithAccessibilityLabel:@"EntryTextField"];
    
    [tester clearTextFromAndThenEnterText:Name intoViewWithAccessibilityLabel:@"EntryTextField"];
    
    [tester waitForViewWithAccessibilityLabel:@"EntryTextField" value:Name traits:UIAccessibilityTraitNone];
    
    [tester tapViewWithAccessibilityLabel:@"CheckButton"];
    [tester waitForViewWithAccessibilityLabel:@"Result"];
    [tester waitForViewWithAccessibilityLabel:@"Result" value:@"This person works at Tryvin." traits:UIAccessibilityTraitNone];
    
    
    [tester tapViewWithAccessibilityLabel:@"BackButton"];
    
}


@end
