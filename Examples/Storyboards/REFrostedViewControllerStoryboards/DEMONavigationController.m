//
//  DEMONavigationController.m
//  REFrostedViewControllerStoryboards
//
//  Created by Roman Efimov on 10/9/13.
//  Copyright (c) 2013 Roman Efimov. All rights reserved.
//

#import "DEMONavigationController.h"

@interface DEMONavigationController ()

@end

@implementation DEMONavigationController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UIScreenEdgePanGestureRecognizer *leftEdgeGesture = [[UIScreenEdgePanGestureRecognizer alloc] initWithTarget:self action:@selector(handleLeftEdgeGesture:)];
    leftEdgeGesture.edges = UIRectEdgeLeft;
//    leftEdgeGesture.delegate = self;
    [self.view addGestureRecognizer:leftEdgeGesture];
}

#pragma mark -
#pragma mark Gesture recognizer

- (void)handleLeftEdgeGesture:(UIPanGestureRecognizer *)sender
{
    // Dismiss keyboard (optional)
    //
    [self.view endEditing:YES];
    [self.frostedViewController.view endEditing:YES];
    
    // Present the view controller
    //
    [self.frostedViewController panGestureRecognized:sender];
}

@end
