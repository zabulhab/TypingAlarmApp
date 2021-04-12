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
@property UIColor *startColor;
@property int firstBadIdx;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _quoteLabel.text = @"quote";
    _startColor = _textField.textColor;
    _firstBadIdx = -1;
    // Do any additional setup after loading the view.
}

- (IBAction)checkForChange:(id)sender {
    UITextField *text = (UITextField*)sender;
    if(text == _textField) // if user changed quote-copying text object
    {
        if (_textField.text.length == _firstBadIdx)
        {
            _firstBadIdx = -1;
        }
        if (_textField.text.length==0)
        {
            text.textColor = _startColor;
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
        

    }
}

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
