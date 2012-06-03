//
//  SwitchNotificationCenterWidgetController.m
//  SwitchNotificationCenterWidget
//
//  Created by Sergey Klimov on 6/2/12.
//  Copyright (c) 2012 Self-Employed. All rights reserved.
//

#import "SwitchNotificationCenterWidgetController.h"
#import "WiFiSwitchButton.h"
#import "MobileInternetSwitchButton.h"
#import "BrightnessSwitchButton.h"

#define WIDGET_HEIGHT 71
#define WIDGET_WIDTH 316
@implementation SwitchNotificationCenterWidgetController

-(id)init
{
	if ((self = [super init]))
	{
	}

	return self;
}

-(void)dealloc
{
	[_view release];
	[super dealloc];
}


- (UIView *)view
{
	if (_view == nil)
	{
		_view = [[UIView alloc] initWithFrame:CGRectMake(2, 0, WIDGET_WIDTH, WIDGET_HEIGHT)];

		UIImage *bg = [[UIImage imageWithContentsOfFile:@"/System/Library/WeeAppPlugins/SwitchNotificationCenterWidget.bundle/WeeAppBackground.png"] stretchableImageWithLeftCapWidth:5 topCapHeight:71];
		UIImageView *bgView = [[UIImageView alloc] initWithImage:bg];
		bgView.frame = CGRectMake(0, 0, WIDGET_WIDTH, WIDGET_HEIGHT);
		[_view addSubview:bgView];
		[bgView release];

        NSArray* buttonClasses = [NSArray arrayWithObjects:
                                  [WiFiSwitchButton class], 
//                                  [MobileInternetSwitchButton class],
//                                  [BrightnessSwitchButton class],
                                  nil];
        [buttonClasses enumerateObjectsUsingBlock:^(Class buttonClass, NSUInteger idx, BOOL *stop) {
            CGRect frame = CGRectMake(idx*WIDGET_HEIGHT, 0, WIDGET_HEIGHT, WIDGET_HEIGHT);
            SwitchButton * button = [[buttonClass alloc] initWithFrame:frame];
            [_view addSubview:button];
            [button release];
            
        }];
	}

	return _view;
}

- (float)viewHeight
{
	return 71.0f;
}

@end