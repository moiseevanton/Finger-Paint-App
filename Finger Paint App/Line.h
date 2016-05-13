//
//  Line.h
//  Finger Paint App
//
//  Created by Anton Moiseev on 2016-05-13.
//  Copyright © 2016 Anton Moiseev. All rights reserved.
//

@import UIKit;

@interface Line : NSObject

@property NSMutableArray *lineSegments;

@property CGFloat width;

@property UIColor *color;

- (instancetype)initWithLineSegments:(NSMutableArray *)lineSegments width:(CGFloat)width color:(UIColor *)color;

@end
