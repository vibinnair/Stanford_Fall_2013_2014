//
//  PlayingCardView.m
//  SuperCard
//
//  Created by Vibin Nair on 20/06/14.
//  Copyright (c) 2014 Vibin Nair. All rights reserved.
//

#import "PlayingCardView.h"

@implementation PlayingCardView

#pragma mark - Properties 

-(void) setRank:(NSUInteger)rank
{
    _rank = rank;
    
    [self setNeedsDisplay];
}


- (void) setSuit:(NSString *)suit
{
    _suit = suit;
    
    [self setNeedsDisplay];
}


- (void) setFaceUp:(BOOL)faceUp
{
    _faceUp = faceUp;
    
    [self setNeedsDisplay];
}


#pragma mark - Drawing

#define CORNER_FONT_STANDARD_HEIGHT 180.0
#define CORNER_RADIUS 12.0

- (CGFloat) cornerScaleFactor { return self.bounds.size.height / CORNER_FONT_STANDARD_HEIGHT; }
- (CGFloat) cornerRadius { return CORNER_RADIUS * [self cornerScaleFactor]; }
- (CGFloat) cornerOffset { return [self cornerRadius] / 3.0 ;}

 // Only override drawRect: if you perform custom drawing.
 // An empty implementation adversely affects performance during animation.
 - (void)drawRect:(CGRect)rect
 {
     // Draw a rect with rounded corners;
     // Rect to be as big as the view;
     UIBezierPath *roundedRect = [UIBezierPath bezierPathWithRoundedRect:self.bounds
                                                      cornerRadius:[self cornerOffset]];
     
     // This clip will restrict our draw activities inside the boundary of this rounded rect;
     [roundedRect addClip];
     
     // So due to clip above our colour filling would be restricted within the rounded rect;
     [[UIColor whiteColor] setFill];
     
     UIRectFill(self.bounds);
     
     // Draw a black outline;
     [[UIColor blackColor] setStroke];
     [roundedRect stroke];
 }


#pragma mark - Initialization

- (void) setUp
{
    // Necessary to switch off all default settings done by system in view window;
    
    // Set the default background color to nil, so that out white colour is visible;
    self.backgroundColor = nil;
    // Remove the opacity;
    self.opaque = NO;
    // Redraw in case of bounds change;
    self.contentMode = UIViewContentModeRedraw;
}


- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setUp];
    }
    return self;
}

- (void)awakeFromNib
{
    [self setUp];
}
@end
