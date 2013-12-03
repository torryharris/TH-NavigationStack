//
//  ViewController.m
//  NavigationStack
//
//  Created by Umakanta on 20/11/13.
//  Copyright (c) 2013 THBS. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    
    
    //Initialize the controller data
    NSString* plistPath = [[NSBundle mainBundle] pathForResource: @"NavStackControllerData"
                                                          ofType: @"plist"];
    // Build the array from the plist
    self.jsonDictionary = [[NSDictionary alloc] initWithContentsOfFile:plistPath];
    
    //NSLog(@"fullDict  = %@",self.jsonDictionary);
    
    //customizing..
    [self setHeaderLabelFont:[UIFont fontWithName:@"HelveticaNeue-Light" size:20.0f]];
    [self setHeaderLabelColor:[UIColor blackColor]];
    [self setHeaderBackGroundColor:[UIColor whiteColor]];
    
    [self setSelectedHeaderLabelFont:[UIFont fontWithName:@"HelveticaNeue-Bold" size:20.0f]];
    [self setSelectedHeaderLabelColor:[UIColor blackColor]];
    [self setSelectedHeaderBackGroundColor:[UIColor whiteColor]];
    
    [self setHeaderSeparatorColor:[UIColor lightGrayColor]];
    
    
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
