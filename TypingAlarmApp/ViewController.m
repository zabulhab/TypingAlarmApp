//
//  ViewController.m
//  TypingAlarmApp
//
//  Created by School on 4/9/21.
//  Copyright © 2021 Zena. Text to read rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *quoteLabel;
@property (weak, nonatomic) IBOutlet UITextField *textField;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    _quoteLabel.text = @"quote";
    // Do any additional setup after loading the view.
}
- (IBAction)checkForChange:(id)sender {
    UITextField *text = (UITextField*)sender;
    if(text == _textField) // if user changed quote-copying text object
    {
        //loop to check if texts match
        if (text.text==_quoteLabel.text)
        {
            printf("match");
            text.textColor = UIColor.greenColor;
            
        }
        else
        {
            text.textColor = UIColor.redColor;
            
        }
        
    }
}



@end
