//
//  main.m
//  Test_CallStack
//
//  Created by Ralph007 on 10/22/16.
//  Copyright © 2016 Ralph007. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CCallStack.h"

#define NSSTRING_PRETTY_FUNCTION \
[NSString stringWithCString:__PRETTY_FUNCTION__ encoding:NSASCIIStringEncoding]

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
    }
    
    NSLog(@"Current Function Name:%@",NSSTRING_PRETTY_FUNCTION);

    // Cutome code
    CCallStack *obj = [[CCallStack alloc] init];
    [obj logCallStack];
    return 0;
}

