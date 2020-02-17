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

// Swift
//func explorePrimitives() {
//    print("Large number: \(largeNumber)")
//}

- (void)explorePrimitives {
    // Rule #2: Always use self outside init/dealloc
    NSLog(@"Large number: %@", self.largeNumber);
    
    //
    // Primitives - number types
    //

    NSLog(@"---------------Primitives---------------");

    // Integer
    // 4 bytes wide, -2,147,483,648 through 2,147,483,647
    int age = 33;
    NSLog(@"You are %i years old", age); // %d = string token for int

    // Long integer
    // 8 bytes wide, -9,223,372,036,854,775,808 through 9,223,372,036,854,775,807
    long milesFromTheSun = 923434334343L;
    NSLog(@"You are %li miles form the sun", milesFromTheSun);  // %ld

    // Single precision floating-point, 32-bit number
    float distance = -21.09f;
    NSLog(@"You are %f feet behind me", distance);
    NSLog(@"%0.2f feet", distance);

    // Double precision floating-point, 64-bit number
    double distance2 = -21.099;
    NSLog(@"%0.2f feet", distance2);

    // Boolean
    // only two value choices, YES for true, NO for false
    BOOL isOn = NO; // YES;
    NSLog(@"isOn: %d", isOn); // 0 (NO) or 1 (YES)
    NSLog(@"isOn: %@", isOn ? @"YES" : @"NO");  // %@ = objective-c object
    
    // Math
    //

    // All standard arithmetic operators apply: +, -, *, /, %

    // Integer division, result is always a whole number and not rounded
    int integerDivision = 5 / 4;  // rounds down (truncating)
    NSLog(@"integerDivision: %d", integerDivision);
    
    // Double division, 1 double and 1 int operand, result is promoted to double
    
    // let doubleDivision = 5.0 / Double(4) // Swift
    double doubleDivision = 5.0 / (double)4;  // either use decimal place or cast to double
    
    // NOTE: it's a common bug to accidentally use: 5/4; and get 1, instead of 1.25
    
    NSLog(@"doubleDivision: %f", doubleDivision);
    
    // Floating point imprecision
    // Print statements show floating point numbers aren't as precise as they appear
    NSLog(@"%.17f", 0.1);
    NSLog(@"%.17f", 4.2 - 4.1);
    //
    // NSInteger
    //

    // autosizes itself based on current platform
    
    // Only older Apple Watches are 32bit
    // All Macs are now 64 bit
    // All iPhones/iPads are 64 bit
    NSInteger anInteger = -6;
    NSUInteger aPositiveInteger = 80;
    NSLog(@"anInteger: %li", (long)anInteger);
    NSLog(@"aPositiveInteger: %ld", (unsigned long)aPositiveInteger);
    
    NSLog(@"---------------End Primitives---------------\n\n");

}

// - = instance method (versus class = +)
// (void) = return type
// exploreObjects = method name

- (void)exploreObjects {
    //
    // Objects (class-based types)
    //

    NSLog(@"---------------Objects---------------");

    // NSString
    NSString *lambda = @"Go all in";
    NSLog(@"%@", lambda);  // %@ = Objective-C object

    // String concatenation/interpolation
    // "The length is " + "\(94)" // Swift

    // @"hello " + @"world"; // Invalid operands to binary expression ('NSString *' and 'NSString *')

    NSString *label = @"The length is";
    int length = 94;
    NSString *lengthString = [NSString stringWithFormat:@"%@ %d", label, length];
    NSLog(@"%@", lengthString);
    
    // `id` type used to store an object of any type
    // AnyObject
    
    id mysteryObject = @"An NSString Object";
    NSLog(@"%@", [mysteryObject description]);
    
    mysteryObject = @[@"Apple", @"Microsoft"];
    NSLog(@"%@", [mysteryObject description]);
    
    NSLog(@"---------------End Objects---------------");

}

- (void)exploreCollectionsWithArray:(NSArray *)shipCaptains {
    
}

- (void)exploreNumbers {
    
}


@end
