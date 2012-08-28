//
//  AppDelegate.m
//  ScaryBugsMac
//
//  Created by Jonathan Carnie on 28/08/12.
//  Copyright (c) 2012 Jonathan Carnie. All rights reserved.
//

#import "AppDelegate.h"
#import "MasterViewController.h"

@interface AppDelegate()

@property (nonatomic, strong) IBOutlet MasterViewController *masterViewController;
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // 1. create the masterview controller
    self.masterViewController = [[MasterViewController alloc] initWithNibName:@"MasterViewController" bundle:nil];
    
    // 2. add the view controller to the window's content view
    [self.window.contentView addSubview:self.masterViewController.view];
    self.masterViewController.view.frame = ((NSView*)self.window.contentView).bounds;
    // Insert code here to initialize your application
    NSLog(@"Now in app delegate.");
}

@end
