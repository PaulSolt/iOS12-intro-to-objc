//
//  main.m
//  iOS12-intro-to-objc
//
//  Created by Paul Solt on 2/17/20.
//  Copyright © 2020 Lambda, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SyntaxBasics.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool { // ARC = Automatic Reference Counting (prevents memory leaks)
        // insert code here...
        /* multiline comments
         */
        
//        print("Hello, World!")    // Swift
        NSLog(@"Hello %@!", @"Paul");
        
        // Swift
//        let basics = SyntaxBasics(largeNumber: 9_223_372_036)
//        basics.explorePrimitives()
        
        // Rule #3: Always import your code before you use it
        SyntaxBasics *basics = [[SyntaxBasics alloc] initWithLargeNumber:@9223372036];
        
        [basics explorePrimitives];
        [basics exploreObjects];
        
        // Swift
//        basics.exploreCollections(array: ["John", "Jim", "Sue"])
        
        [basics exploreCollectionsWithArray:@[@"Malcolm Reynolds",
                                               @"Jean-Luc Picard",
                                               @"James T. Kirk",
                                               @"Kathryn Janeway"]];
        
    }
    return 0;
}
