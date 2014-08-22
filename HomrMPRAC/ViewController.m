//
//  ViewController.m
//  HomrMPRAC
//
//  Created by Meredith Packham on 8/21/14.
//  Copyright (c) 2014 Mobile Makers. All rights reserved.
//

#import "ViewController.h"
#import <MDCSwipeToChooseView.h>
#import <MDCSwipeToChooseViewOptions.h>
#import <MDCPanState.h>


@interface ViewController () <NSXMLParserDelegate>
@property NSXMLParser *xmlParser;
@property MDCSwipeToChooseView *houseView;


@end

@implementation ViewController



- (void)viewDidLoad
{
    [super viewDidLoad];
    self.xmlParser.delegate = self;
   // self.xmlParser = [NSXMLParser alloc] initWithContentsOfURL:<#(NSURL *)#>];



    MDCSwipeToChooseViewOptions *options = [MDCSwipeToChooseViewOptions new];

    options.delegate = self;
    options.likedText = @"Like";
    options.likedColor = [UIColor blueColor];
    options.nopeText = @"Dislike";
    options.onPan = ^(MDCPanState *state)
    {
        if (state.direction == MDCSwipeDirectionNone) {
            self.houseView.alpha = 1.f;
        }
        if (state.thresholdRatio == 1.f && state.direction == MDCSwipeDirectionLeft)
        {
            NSLog(@"Let go now to dislike the house!");
            self.houseView.alpha = 0.5f;
        }
        if (state.thresholdRatio == 1.f && state.direction == MDCSwipeDirectionRight)
        {
            NSLog(@"Let go now to like the house!");
            self.houseView.alpha = 0.5f;
        }

    };

    self.houseView = [[MDCSwipeToChooseView alloc] initWithFrame:self.view.bounds
                                                         options:options];
    self.houseView.imageView.image = [UIImage imageNamed:@"photo"];

    [self.view addSubview:self.houseView];

}

#pragma mark - MDCSwipeToChooseDelegate Callbacks

// This is called when a user didn't fully swipe left or right.
- (void)viewDidCancelSwipe:(UIView *)view {
    NSLog(@"Couldn't decide, huh?");
}

// This is called then a user swipes the view fully left or right.
- (void)view:(UIView *)view wasChosenWithDirection:(MDCSwipeDirection)direction {
    if (direction == MDCSwipeDirectionLeft) {
        NSLog(@"Photo deleted!");
    } else {
        NSLog(@"Photo saved!");
    }
}




@end
