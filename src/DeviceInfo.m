//
//  DeviceInfo.m
//
//  Copyright (c) PocketGems Inc. All rights reserved.
//

#import "DeviceInfo.h"

@implementation FBDeviceInfo

+ (void)initializeJava
{
    [super initializeJava];
    [FBDeviceInfo registerStaticMethod:@"getNumberOfCPUCores" selector:@selector(cpuNumberOfCores) returnValue:[JavaClass intPrimitive]];
    [FBDeviceInfo registerStaticMethod:@"getCPUMaxFreqKHz" selector:@selector(cpuMaxFreqKHz) returnValue:[JavaClass intPrimitive]];
    [FBDeviceInfo registerStaticMethod:@"getTotalMemory" selector:@selector(totalMemoryBytes) returnValue:[JavaClass longPrimitive]];
}

+ (NSString *)className
{
    return @"com.facebook.device.yearclass.DeviceInfo";
}

@end
