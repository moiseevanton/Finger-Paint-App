//
//  PaintView.h
//  Finger Paint App
//
//  Created by Anton Moiseev on 2016-05-13.
//  Copyright © 2016 Anton Moiseev. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Line.h"
#import "LineSegment.h"

@interface PaintView : UIView

@property NSMutableArray *listOfLines;

@property Line *line;

@end
