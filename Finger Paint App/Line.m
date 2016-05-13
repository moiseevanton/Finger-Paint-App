//
//  Line.m
//  Finger Paint App
//
//  Created by Anton Moiseev on 2016-05-13.
//  Copyright © 2016 Anton Moiseev. All rights reserved.
//

#import "Line.h"

@implementation Line

- (instancetype)init {
    
    return [self initWithLineSegments:[NSMutableArray new] width:6.0 color:[UIColor greenColor]];
    
}

- (instancetype)initWithLineSegments:(NSMutableArray *)lineSegments width:(CGFloat)width color:(UIColor *)color {
    
    self = [super init];
    
    if (self) {
        
        _lineSegments = lineSegments;
        _width = width;
        _color = color;
        
    }
    return self;
}
@end
