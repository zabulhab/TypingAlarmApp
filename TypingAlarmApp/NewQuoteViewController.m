//
//  NewQuoteViewController.m
//  TypingAlarmApp
//
//  Created by School on 4/22/21.
//  Copyright © 2021 Zena. All rights reserved.
//

#import "NewQuoteViewController.h"

@interface NewQuoteViewController ()



@end

@implementation NewQuoteViewController

@synthesize delegate; //synthesise  MyClassDelegate delegate

- (void) storeQuote {
    [self.delegate receiveQuote:@"Blah"]; //this will call the method implemented in your other class
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)saveBtnPressed:(id)sender {
    // if id savebtn, call storequote
    //touch up inside
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
