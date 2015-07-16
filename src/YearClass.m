//
//  YearClass.m
//
//  Copyright (c) PocketGems Inc. All rights reserved.
//

#import "YearClass.h"

#import <BridgeKit/AndroidActivity.h>

@interface FBYearClass()
+ (NSInteger)yearClassOfAppContext:(AndroidContext *)ctx;
@end

@implementation FBYearClass

+ (void)initializeJava
{
    [super initializeJava];
    [FBYearClass registerStaticMethod:@"get" selector:@selector(yearClassOfAppContext:) returnValue:[JavaClass intPrimitive] arguments:[AndroidContext className], nil];
}

+ (NSString *)className
{
    return @"com.facebook.device.yearclass.YearClass";
}

+ (FBYearClassValue)yearClass
{
    return (FBYearClassValue)[self yearClassOfAppContext:[AndroidActivity currentActivity]];
}

@end
