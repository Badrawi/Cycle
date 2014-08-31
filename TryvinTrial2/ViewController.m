//
//  ViewController.m
//  TestingKIF
//
//  Created by Youssef Hatem on 8/25/14.
//  Copyright (c) 2014 ___FULLUSERNAME___. All rights reserved.
//

#import "ViewController.h"
#import "ResultViewController.h"

@interface ViewController ()

@end

@implementation ViewController




- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    
    FirstTime = true;
    
    NSString *plistPath = [[NSBundle mainBundle] pathForResource:@"TestPList" ofType:@"plist"];
    NSMutableArray *contentArray = [NSMutableArray arrayWithContentsOfFile:plistPath];
    
    //////////////////
    
    NewPListPath = @"/Users/tryvin/Downloads/TryvinTrial2/TryvinTrial2/CreatedList.plist" ;
    
    NewPListPath = @"/CreatedList.plist" ;
    
    
    //NSFileManager *fileManager = [NSFileManager defaultManager];
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentsDirectory = [paths objectAtIndex:0];
    
    NewPListPath = [documentsDirectory stringByAppendingPathComponent:@"/CreatedList.plist"];
    
   /* if ([fileManager fileExistsAtPath:txtPath] == NO) {
        NSString *resourcePath = [[NSBundle mainBundle] pathForResource:@"txtFile" ofType:@"txt"];
        [fileManager copyItemAtPath:resourcePath toPath:txtPath error:&error];
    }*/
    
    
    
    /*
     
     
     Copies txtFile from resource to document if not already present.
     
     NSFileManager *fileManager = [NSFileManager defaultManager];
     NSError *error;
     NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
     NSString *documentsDirectory = [paths objectAtIndex:0];
     
     NSString *txtPath = [documentsDirectory stringByAppendingPathComponent:@"txtFile.txt"];
     
     if ([fileManager fileExistsAtPath:txtPath] == NO) {
     NSString *resourcePath = [[NSBundle mainBundle] pathForResource:@"txtFile" ofType:@"txt"];
     [fileManager copyItemAtPath:resourcePath toPath:txtPath error:&error];
     }
     If you want to overwrite every time then try this:
     
     if ([fileManager fileExistsAtPath:txtPath] == YES) {
     [fileManager removeItemAtPath:txtPath error:&error];
     }
     
     NSString *resourcePath = [[NSBundle mainBundle] pathForResource:@"txtFile" ofType:@"txt"];
     [fileManager copyItemAtPath:resourcePath toPath:txtPath error:&error];
     
     
     
     */
    
    /////////////////////
   [contentArray writeToFile:NewPListPath atomically:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(IBAction) CheckButtonTapped      :(id)sender
{
    NSString *plistPath = [[NSBundle mainBundle] pathForResource:@"TestPList" ofType:@"plist"];
    
    
    if (!FirstTime) {
  
    plistPath = NewPListPath;
        
    }
    
    NSMutableArray *contentArray = [NSMutableArray arrayWithContentsOfFile:plistPath];
    
    //NSString * Object = [contentArray objectAtIndex:0];
    
    Found = [contentArray containsObject: _Entry.text];
    
    //NSUInteger indexOfTheObject = [contentArray indexOfObject: _Entry.text ];
    

}


-(IBAction) AddButtonTapped         :(id)sender
{
    NSString *plistPath = [[NSBundle mainBundle] pathForResource:@"TestPList" ofType:@"plist"];
    if (!FirstTime) {
        
        plistPath = NewPListPath;
        
    }
    
    NSMutableArray *contentArray = [NSMutableArray arrayWithContentsOfFile:plistPath];
    
    
    
    //NSString *path = [[NSBundle mainBundle] pathForResource:@"TestPList" ofType:@"plist"];
    
    NSString *AddedElement = _Entry.text;
    
    [contentArray addObject:AddedElement];
    
    
    bool saved = [contentArray writeToFile:NewPListPath atomically:YES];
    
    FirstTime = false;
    
}
-(IBAction) DeleteButtonTapped      :(id)sender
{
    
    NSString *plistPath = [[NSBundle mainBundle] pathForResource:@"TestPList" ofType:@"plist"];
    if (!FirstTime) {
        
        plistPath = NewPListPath;
        
    }
    
    NSMutableArray *contentArray = [NSMutableArray arrayWithContentsOfFile:plistPath];
    
    
    
    //NSString *path = [[NSBundle mainBundle] pathForResource:@"TestPList" ofType:@"plist"];
    
    NSString *ElementToDelete = _Entry.text;
    
    [contentArray removeObject:ElementToDelete];
    
    [contentArray writeToFile:NewPListPath atomically:YES];
    FirstTime = false;
    
}





-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    
    if ([segue.identifier isEqualToString:@"ShowResult"]) {
        
        ResultViewController *destViewController = segue.destinationViewController;
        NSString *Holder ;
        if (Found) {
            
            
            
            Holder = @"This person works at Tryvin." ;
            destViewController.ResultHolder = Holder ;
        }
        else{
            
            Holder = @"This person is an intruder." ;
            destViewController.ResultHolder = Holder ;
        }
    }
}






-(IBAction)TextFieldDoneEditing:(id) sender
{
    [sender resignFirstResponder];
}



@end
