//
//  LineSegment.h
//  Finger Paint App
//
//  Created by Anton Moiseev on 2016-05-13.
//  Copyright © 2016 Anton Moiseev. All rights reserved.
//

@import UIKit;

@interface LineSegment : NSObject

@property CGPoint start;

@property CGPoint end;

- (instancetype)initWithStart:(CGPoint)start end:(CGPoint)end;

@end
