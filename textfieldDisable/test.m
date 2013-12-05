//
//  test.m
//  textfieldDisable
//
//  Created by Hadi Hatinoglu on 04/12/13.
//  Copyright (c) 2013 Baraansoft. All rights reserved.
//

#import "test.h"

@implementation test

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

-(BOOL)canPerformAction:(SEL)action withSender:(id)sender{
    
    
    if (action == @selector(paste:))
        return NO;
    else if (action==@selector(copy:))
        return NO;
    else if (action==@selector(selectAll:))
        return NO;
    return [super canPerformAction:action withSender:sender];
    
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
