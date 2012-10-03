//
//  untitled.m
//  CustomTabBar
//
//  Created by iit cct2 on 11/6/11.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "quartz.h"


@implementation quartz


- (id)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        // Initialization code
    }
    return self;
}


- (void)drawRect:(CGRect)rect {
    
    
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    
	
    
    //setting background white using core graphics.
    CGContextSetLineWidth(context, 2.0);
    CGContextSetStrokeColorWithColor(context, [UIColor whiteColor].CGColor);
    CGRect rectangleback = CGRectMake(0,0,320,480);
    CGContextAddRect(context, rectangleback);
    CGContextStrokePath(context);
    CGContextSetFillColorWithColor(context, [UIColor whiteColor].CGColor);
    CGContextFillRect(context, rectangleback);
	
	
    
    //creating the VolksWagon circle by using the rectanglemethod
    CGContextSetLineWidth(context, 4.0);    
    
    CGRect rectangle = CGRectMake(50,200, 200,200);    
    CGContextAddEllipseInRect(context, rectangle);
    CGContextSetFillColorWithColor(context, [UIColor blueColor].CGColor);
    CGContextFillEllipseInRect(context, rectangle); //fillin the ellipse(circle) with blue
    CGContextSetStrokeColorWithColor(context, [UIColor grayColor].CGColor);
    CGContextStrokeEllipseInRect(context, rectangle);
    CGContextStrokePath(context);
    
    
    //creating the innner grey circle
    CGContextSetLineWidth(context, 14.0);    
    CGContextSetStrokeColorWithColor(context, [UIColor grayColor].CGColor);
    CGRect rectangle3 = CGRectMake(70,221,159,159);
    CGContextAddEllipseInRect(context, rectangle3);    
    CGContextStrokePath(context);
    
    
    //Making the two 'V' in the innner symbol
    CGContextSetLineWidth(context, 14.0);
    CGContextSetStrokeColorWithColor(context, [UIColor grayColor].CGColor);
    CGContextMoveToPoint(context, 78, 264);
    CGContextAddLineToPoint(context, 125, 360);
    CGContextAddLineToPoint(context, 184, 228);
    CGContextMoveToPoint(context, 113, 228);
    CGContextAddLineToPoint(context, 173, 360);
    CGContextAddLineToPoint(context, 220, 264);
    CGContextStrokePath(context);
    
    //seprating out the V and the W by putting a blue line in middle
    CGContextSetLineWidth(context, 6.0);
    CGContextSetStrokeColorWithColor(context, [UIColor blueColor].CGColor);
    CGContextMoveToPoint(context, 139, 305);
    CGContextAddLineToPoint(context, 159, 305);
    CGContextStrokePath(context);
	
    
    
    //Creating the grey outline for chevy logo by overlaying a grey path on the yellow fill
    
    CGContextSetLineWidth(context, 8.0);
    CGContextSetStrokeColorWithColor(context, [UIColor grayColor].CGColor);
    CGContextMoveToPoint(context, 50, 150);
    CGContextAddLineToPoint(context, 75, 100);
    CGContextAddLineToPoint(context, 120, 100);
    CGContextAddLineToPoint(context, 120, 75);
    CGContextAddLineToPoint(context, 185, 75);
    CGContextAddLineToPoint(context, 185, 100);
    CGContextAddLineToPoint(context, 255, 100);
    CGContextAddLineToPoint(context, 230, 150);
    CGContextAddLineToPoint(context, 185, 150);
    CGContextAddLineToPoint(context, 185, 175);
    CGContextAddLineToPoint(context, 120, 175);
    CGContextAddLineToPoint(context, 120, 150);
    CGContextAddLineToPoint(context, 47, 150);
    CGContextStrokePath(context);    
    
    
    //Creating the yellow portion of the Chevy logo by plotting a path and filling it in with yellow 
    CGContextSetShadow(context, CGSizeMake(-5, -15), 6.0);   //adding shadow to the logo's yellow part
    CGContextMoveToPoint(context, 50, 150);
    CGContextAddLineToPoint(context, 75, 100);
    CGContextAddLineToPoint(context, 120, 100);
    CGContextAddLineToPoint(context, 120, 75);
    CGContextAddLineToPoint(context, 185, 75);
    CGContextAddLineToPoint(context, 185, 100);
    CGContextAddLineToPoint(context, 255, 100);
    CGContextAddLineToPoint(context, 230, 150);
    CGContextAddLineToPoint(context, 185, 150);
    CGContextAddLineToPoint(context, 185, 175);
    CGContextAddLineToPoint(context, 120, 175);
    CGContextAddLineToPoint(context, 120, 150);
    CGContextAddLineToPoint(context, 50, 150);
    CGContextSetFillColorWithColor(context, [UIColor yellowColor].CGColor);
    CGContextFillPath(context);
    
	
    
    
    
    //Putting shadows
	//   CGContextSetShadow(context, CGSizeMake(-5, -15), 6.0);
    
	
    
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code.
}
*/

- (void)dealloc {
    [super dealloc];
}


@end
