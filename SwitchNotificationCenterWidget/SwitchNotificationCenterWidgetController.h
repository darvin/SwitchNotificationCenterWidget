//
//  SwitchNotificationCenterWidgetController.h
//  SwitchNotificationCenterWidget
//
//  Created by Sergey Klimov on 6/2/12.
//  Copyright (c) 2012 Self-Employed. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "SpringBoard/BBWeeAppController.h"

@interface SwitchNotificationCenterWidgetController : NSObject <BBWeeAppController>
{
    UIView *_view;
}

- (UIView *)view;

@end