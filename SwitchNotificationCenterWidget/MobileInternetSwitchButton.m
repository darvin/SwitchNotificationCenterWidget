//
//  3GSwitchButton.m
//  SwitchNotificationCenterWidget
//
//  Created by Sergey Klimov on 6/2/12.
//  Copyright (c) 2012 Self-Employed. All rights reserved.
//

#import "MobileInternetSwitchButton.h"
@implementation MobileInternetSwitchButton



-(NSString*) imageName {
    return @"275-broadcast";
}

-(void) clicked:(id)sender {
    self.selected = !self.selected;
}
@end
