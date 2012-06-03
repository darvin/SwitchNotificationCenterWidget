//
//  WiFiSwitchButton.m
//  SwitchNotificationCenterWidget
//
//  Created by Sergey Klimov on 6/2/12.
//  Copyright (c) 2012 Self-Employed. All rights reserved.
//

#import "WiFiSwitchButton.h"
#import <SpringBoard/SBWiFiManager.h>

@implementation WiFiSwitchButton

-(id) initWithFrame:(CGRect)frame {
    if (self=[super initWithFrame:frame])  {
        self.selected = [[objc_getClass("SBWiFiManager") sharedInstance] wiFiEnabled];
    }
    return self;
}

-(void) clicked:(id)sender {
    self.selected = !self.selected;
    [[objc_getClass("SBWiFiManager") sharedInstance] setWiFiEnabled:self.selected];
}

-(NSString*) imageName {
    return @"55-network";
}

@end
