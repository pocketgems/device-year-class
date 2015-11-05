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
    [FBDeviceInfo registerStaticMethod:@"getNumberOfCPUCores" selector:@selector(cpuNumberOfCores) returnValue:[BK2JavaClass intPrimitive]];
    [FBDeviceInfo registerStaticMethod:@"getCPUMaxFreqKHz" selector:@selector(cpuMaxFreqKHz) returnValue:[BK2JavaClass intPrimitive]];
    [FBDeviceInfo registerStaticMethod:@"getTotalMemory" selector:@selector(totalMemoryBytes) returnValue:[BK2JavaClass longPrimitive]];
}

+ (NSString *)className
{
    return @"com.facebook.device.yearclass.DeviceInfo";
}

@end
