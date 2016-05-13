//
//  LineSegment.m
//  Finger Paint App
//
//  Created by Anton Moiseev on 2016-05-13.
//  Copyright © 2016 Anton Moiseev. All rights reserved.
//

#import "LineSegment.h"

@implementation LineSegment

- (instancetype)init {
    
    return [self initWithStart:CGPointMake(0.0, 0.0) end:CGPointMake(1.0, 1.0)];
    
}

- (instancetype)initWithStart:(CGPoint)start end:(CGPoint)end {
    
    self = [super init];
    
    if (self) {
        
        _start = start;
        _end = end;
        
    }
    return self;
}

@end
