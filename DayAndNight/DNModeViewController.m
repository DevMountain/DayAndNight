//
//  DNModeViewController.m
//  DayAndNight
//
//  Created by Joshua Howland on 6/5/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import "DNModeViewController.h"

@interface DNModeViewController ()

@property (nonatomic, strong) IBOutlet UILabel *label;
@property (nonatomic, strong) IBOutlet UISegmentedControl *control;

- (IBAction)segmentChanged:(id)sender;

@end

@implementation DNModeViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"Night and Day";
}

- (IBAction)segmentChanged:(id)sender {

    UISegmentedControl *control = sender;
    switch (control.selectedSegmentIndex) {
        case 1: {
            [self updateForNightMode];
            break;
        }
        default: {
            [self updateForDayMode];
            break;
        }
    }
    
}

// Note: The appearance code is only include for educational purposes. It doesn't work.
// UIAppearance changes are made before the view is loaded. This means that any view that is already loaded
// Will not be repainted by changing a value via the UIAppearance protocol

- (void)updateForDayMode {

    self.view.backgroundColor = [UIColor whiteColor];
    self.label.textColor = [UIColor darkTextColor];

    self.control.backgroundColor = [UIColor whiteColor];
    self.control.tintColor = [UIColor blueColor];
    
//    [[UISegmentedControl appearance] setBackgroundColor:[UIColor whiteColor]];
//    [[UISegmentedControl appearance] setTintColor:[UIColor blueColor]];

    self.navigationController.navigationBar.barTintColor = nil;
    self.navigationController.navigationBar.titleTextAttributes = @{
                                                                    NSForegroundColorAttributeName: [UIColor blueColor],
                                                                    NSFontAttributeName: [UIFont fontWithName:@"Avenir-Light" size:20]
                                                                    };
    
//    [[UINavigationBar appearance] setBarTintColor:nil];
//    [[UINavigationBar appearance] setTitleTextAttributes:@{
//                                                           NSForegroundColorAttributeName: [UIColor blueColor],
//                                                           NSFontAttributeName: [UIFont fontWithName:@"Avenir-Light" size:20]
//                                                           }];
    
    
    
}

- (void)updateForNightMode {

    self.view.backgroundColor = [UIColor blackColor];
    self.label.textColor = [UIColor lightTextColor];
    
    self.control.backgroundColor = [UIColor blackColor];
    self.control.tintColor = [UIColor lightTextColor];

//    [[UISegmentedControl appearance] setBackgroundColor:[UIColor blackColor]];
//    [[UISegmentedControl appearance] setTintColor:[UIColor lightTextColor]];
    
    
    self.navigationController.navigationBar.barTintColor = [UIColor darkGrayColor];
    self.navigationController.navigationBar.titleTextAttributes = @{
                                                                    NSForegroundColorAttributeName: [UIColor lightTextColor],
                                                                    NSFontAttributeName: [UIFont fontWithName:@"Avenir-Light" size:20]
                                                                    };

//    [[UINavigationBar appearance] setBarTintColor:[UIColor darkGrayColor]];
//    [[UINavigationBar appearance] setTitleTextAttributes:@{
//                                                           NSForegroundColorAttributeName: [UIColor lightTextColor],
//                                                           NSFontAttributeName: [UIFont fontWithName:@"Avenir-Light" size:20]
//                                                           }];

}

@end
