//
//  UIImage+SwitchNotificationCenterWidget.m
//  SwitchNotificationCenterWidget
//
//  Created by Sergey Klimov on 6/2/12.
//  Copyright (c) 2012 Self-Employed. All rights reserved.
//

#import "UIImage+SwitchNotificationCenterWidget.h"

@implementation UIImage (SwitchNotificationCenterWidget)
+ (UIImage*) imageFromWeeAppBundleNamed:(NSString*) imageName {
    NSString *suffix = nil;
    if ([[UIScreen mainScreen] respondsToSelector:@selector(displayLinkWithTarget:selector:)] &&
        ([UIScreen mainScreen].scale == 2.0)) {
        suffix = @"@2x";
    } else {
        suffix = @"";
    }
    
    return [UIImage imageWithContentsOfFile:[NSString stringWithFormat:@"/System/Library/WeeAppPlugins/SwitchNotificationCenterWidget.bundle/%@%@.png", imageName, suffix]];
}

@end
