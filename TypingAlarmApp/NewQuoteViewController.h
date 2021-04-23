//
//  NewQuoteViewController.h
//  TypingAlarmApp
//
//  Created by School on 4/22/21.
//  Copyright © 2021 Zena. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@class NewQuoteViewController;

@protocol quoteSaveDelegate <NSObject>

- (void) receiveQuote: (NSString*) quote;

@end

@interface NewQuoteViewController : UIViewController

@property (nonatomic, weak) id <quoteSaveDelegate> delegate;

@end

NS_ASSUME_NONNULL_END
