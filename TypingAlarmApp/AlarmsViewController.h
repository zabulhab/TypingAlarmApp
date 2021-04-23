//
//  AlarmsViewController.h
//  TypingAlarmApp
//
//  Created by School on 4/22/21.
//  Copyright © 2021 Zena. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NewQuoteViewController.h"

NS_ASSUME_NONNULL_BEGIN

@interface AlarmsViewController : UIViewController <quoteSaveDelegate>
@property (weak, nonatomic) IBOutlet UIButton *alarmTestLbl;

@end

NS_ASSUME_NONNULL_END
