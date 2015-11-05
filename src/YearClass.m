//
//  YearClass.m
//
//  Copyright (c) PocketGems Inc. All rights reserved.
//

#import "YearClass.h"

#import <BridgeKit/BK2AndroidActivity.h>

@interface FBYearClass()
+ (NSInteger)yearClassOfAppContext:(BK2AndroidContext *)ctx;
@end

@implementation FBYearClass

+ (void)initializeJava
{
    [super initializeJava];
    [FBYearClass registerStaticMethod:@"get" selector:@selector(yearClassOfAppContext:) returnValue:[BK2JavaClass intPrimitive] arguments:[BK2AndroidContext className], nil];
}

+ (NSString *)className
{
    return @"com.facebook.device.yearclass.YearClass";
}

+ (FBYearClassValue)yearClass
{
    return (FBYearClassValue)[self yearClassOfAppContext:[BK2AndroidActivity currentActivity]];
}

@end
