//
//  SwitchButton.m
//  SwitchNotificationCenterWidget
//
//  Created by Sergey Klimov on 6/2/12.
//  Copyright (c) 2012 Self-Employed. All rights reserved.
//

#import "SwitchButton.h"
#import "UIImage+SwitchNotificationCenterWidget.h"
@implementation SwitchButton

- (id)initWithFrame:(CGRect)frame 
{
    self = [super initWithFrame:frame];
    if (self) {
        UIImage *image = [UIImage imageFromWeeAppBundleNamed:[self imageName]];
        [self setImage:image forState:UIControlStateNormal];
        UIImage *imageSelected = [UIImage imageFromWeeAppBundleNamed:[NSString stringWithFormat:@"%@-selected",[self imageName]]];
        [self setImage:image forState:UIControlStateNormal];
        [self setImage:imageSelected forState:UIControlStateSelected];

        [self addTarget:self action:@selector(clicked:) forControlEvents:UIControlEventTouchDown];
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

-(void) clicked:(id)sender {
    
}

-(NSString*) imageName {
    return nil;
}

-(void) dealloc {
    [super dealloc];
    [self removeTarget:self action:@selector(clicked:) forControlEvents:UIControlEventTouchUpInside];
}

- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event {
    int errorMargin = 10;
    CGRect largerFrame = CGRectMake(0 - errorMargin, 0 - errorMargin, self.frame.size.width + errorMargin, self.frame.size.height + errorMargin);
    return (CGRectContainsPoint(largerFrame, point) == 1) ? self : nil;
}

@end
