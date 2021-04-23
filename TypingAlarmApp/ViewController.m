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

@property int firstBadIdx;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _quoteLabel.text = @"quote"; // TODO: user sets this
    _firstBadIdx = -1;
    //NSLog([self.storyboard valueForKey:@"name"]);
    //self.storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]]
    // Do any additional setup after loading the view.
}

/**
 Determine what color to make text based on what is input.
 Constant time algorithm since only currents chars are compared
 */
- (IBAction)checkForChange:(id)sender {
    UITextField *text = (UITextField*)sender;
    if(text == _textField) // if user changed quote-copying text object
    {
        // if just deleted bad idx, reset to -1
        if (_textField.text.length == _firstBadIdx)
        {
            _firstBadIdx = -1;
        }
        // if no text, return and set to start color
        if (_textField.text.length==0)
        {
            return;
        }
        // loop to check if texts match
        //
        BOOL doCharsMatch = [self stringMatch:(_quoteLabel.text) withNSString:(text.text)];
        if (doCharsMatch)
        {
            if (_firstBadIdx==-1)
                text.textColor = UIColor.greenColor;
        }
        else
        {
            if (_firstBadIdx==-1)
            {
                text.textColor = UIColor.redColor;
                _firstBadIdx = (int)text.text.length-1;
            }
        }

        // TODO: if user finished matching quote, show success feedback
         
        if ([text.text isEqualToString:_quoteLabel.text])
        {
            UICollectionViewController* alarms = [self.storyboard instantiateViewControllerWithIdentifier:@"alarmsVC"];
            [self.navigationController pushViewController:alarms animated:YES];
        }
    }
}

/**
 Compares two chars and returns true if they are equal, false if not.
 Used for most recently input character and corresponding quote character
 */
- (BOOL)stringMatch:(NSString*)quotePtr withNSString:(NSString*)textPtr
{
//    NSInteger curTextLen = textPtr.length;
//    NSLog(@"%ld", (long)curTextLen);
    int curTextLen = (int)textPtr.length;
    NSLog(@"%ld", (long)curTextLen);
    NSLog(@"%@", quotePtr);
    unichar lastChar = [textPtr characterAtIndex:curTextLen-1];
    unichar curQuotechar = [quotePtr characterAtIndex:curTextLen-1];
    
    if (lastChar==curQuotechar)
        return true;
    else
        return false;
}


@end
