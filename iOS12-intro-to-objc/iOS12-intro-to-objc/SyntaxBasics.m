//
//  SyntaxBasics.m
//  iOS12-intro-to-objc
//
//  Created by Paul Solt on 2/17/20.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

#import "SyntaxBasics.h"

// Implementation File
@implementation SyntaxBasics

- (instancetype)initWithLargeNumber:(NSNumber *)largeNumber {
    self = [super init];
    if (self) {
        // Rule #1: Always use the _variableName in your init/dealloc methods
        _largeNumber = largeNumber;
    }
    return self;
}

- (void)explorePrimitives {
    // Rule #2: Always use self outside init/dealloc
    NSLog(@"Large number: %@", self.largeNumber);
}

@end
