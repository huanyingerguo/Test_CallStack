//
//  CCallStack.m
//  Test_CallStack
//
//  Created by Ralph007 on 10/22/16.
//  Copyright © 2016 Ralph007. All rights reserved.
//

#import "CCallStack.h"

@implementation CCallStack

- (void)logCallStack{
    NSArray *syms = [NSThread  callStackSymbols];
    if ([syms count] > 1) {
        NSLog(@"<%@ %p> %@ - caller: %@ ", [self class], self, NSStringFromSelector(_cmd),[syms objectAtIndex:1]);
    } else {
        NSLog(@"<%@ %p> %@", [self class], self, NSStringFromSelector(_cmd));
    }
    
    [self printInfo];
}

- (void)printInfo{
    NSArray *syms = [NSThread  callStackSymbols];

    if ([syms count] > 1) {
        NSLog(@"<%@ %p> %@ - caller: %@ ", [self class], self, NSStringFromSelector(_cmd),[syms objectAtIndex:1]);
    } else {
        NSLog(@"<%@ %p> %@", [self class], self, NSStringFromSelector(_cmd));
    }
}
@end

//NSArray *syms = [NSThread  callStackSymbols];
//if ([syms count] > 1) {
//    NSLog(@"<%@ %p> %@ - caller: %@ ", [self class], self, NSStringFromSelector(_cmd),[syms objectAtIndex:1]);
//} else {
//    NSLog(@"<%@ %p> %@", [self class], self, NSStringFromSelector(_cmd));
//}
