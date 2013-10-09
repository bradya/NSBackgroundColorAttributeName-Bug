//
//  TestView.m
//  NSBackgroundColorTest
//
//  Created by Brady Archambo on 10/9/13.
//  Copyright (c) 2013 Boa. All rights reserved.
//

#import "TestView.h"

@implementation TestView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        attributedStringWithBackgroundColor = [[NSAttributedString alloc] initWithString:@"This string only shows up if it is drawn at y:0" attributes:@{ NSBackgroundColorAttributeName: [UIColor magentaColor] }];
        
        attributedStringWithoutBackgroundColor = [[NSAttributedString alloc] initWithString:@"This string shows up anywhere"];
    }
    return self;
}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
    [super drawRect:rect];
    
    // Draw string with background at y:0. This works as expected
    [attributedStringWithBackgroundColor drawInRect:CGRectMake(0.0, 0.0, rect.size.width, rect.size.height)];
    
    // Draw string with background at an arbitrary y over 0.
    // This DOES NOT work on devices running iOS 7! (This exact code DOES work on devices running iOS 6)
    [attributedStringWithBackgroundColor drawInRect:CGRectMake(0.0, 50.0, rect.size.width, rect.size.height)];
    
    // Draw string without background at an arbitrary y over 0. This works as expected
    [attributedStringWithoutBackgroundColor drawInRect:CGRectMake(0.0, 100.0, rect.size.width, rect.size.height)];
}

@end
