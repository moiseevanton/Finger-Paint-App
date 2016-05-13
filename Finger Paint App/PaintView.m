//
//  PaintView.m
//  Finger Paint App
//
//  Created by Anton Moiseev on 2016-05-13.
//  Copyright © 2016 Anton Moiseev. All rights reserved.
//

#import "PaintView.h"

@implementation PaintView

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    
    if ([super initWithCoder:aDecoder]) {
        
        _listOfLines = [NSMutableArray new];
        
        
        
    }
    return self;
}

- (void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    self.line = [[Line alloc] init];
    
    CGPoint previousPoint = [[touches anyObject] previousLocationInView:self];
    
    CGPoint currentPoint = [[touches anyObject] locationInView:self];
    
    [self.line.lineSegments addObject:[[LineSegment alloc] initWithStart:previousPoint end:currentPoint]];
    
    [self.listOfLines addObject:self.line];
    
    [self setNeedsLayout];
    [self setNeedsDisplay];
    
}

- (void)drawRect:(CGRect)rect {
    
    for (Line *eachLine in self.listOfLines) {
        
        UIBezierPath *myLine = [UIBezierPath bezierPath];
        
        myLine.lineWidth = eachLine.width;
        
        [eachLine.color setStroke];
        
        for (LineSegment *eachLineSegment in eachLine.lineSegments) {
            
            [myLine moveToPoint:eachLineSegment.start];
            
            [myLine addLineToPoint:eachLineSegment.end];
            
            [myLine stroke];
            
        }
    }
}

@end
