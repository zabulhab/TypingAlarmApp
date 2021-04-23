//
//  AlarmsViewController.m
//  TypingAlarmApp
//
//  Created by School on 4/22/21.
//  Copyright © 2021 Zena. All rights reserved.
//

#import "AlarmsViewController.h"
#import "NewQuoteViewController.h"

@interface AlarmsViewController ()
@property (nonatomic,  strong) NewQuoteViewController* currentQuoteVC;
@end

@implementation AlarmsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //self.navigationController = 
    // Do any additional setup after loading the view.
}

- (IBAction)plusButtonPressed:(id)sender {
    // open new quote screen without closing this (use stack)
    //_currentQuoteVC = [[NewQuoteViewController alloc] init];
    _currentQuoteVC = [self.storyboard instantiateViewControllerWithIdentifier:@"newQuote"];
    [self.navigationController pushViewController:_currentQuoteVC animated:YES];
    
}

- (void) receiveQuote: (NSString*) quote{
    // store quote in model and change label to quote preview
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
