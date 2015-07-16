//
//  DeviceInfo.h
//
//  Copyright (c) PocketGems Inc. All rights reserved.
//

#if !defined(ANDROID)
#error Android only
#endif

#define DEVICEINFO_UNKNOWN (-1)

#import <BridgeKit/JavaObject.h>

@interface FBDeviceInfo : JavaObject

/**
 * Returns number of cores or DEVICEINFO_UNKNOWN
 */
+ (NSInteger)cpuNumberOfCores;

/**
 * Returns CPU max Frequency in kHz or DEVICEINFO_UNKNOWN
 */
+ (NSInteger)cpuMaxFreqKHz;

/**
 * Returns total memory in bytes or DEVICEINFO_UNKNOWN
 */
+ (long long)totalMemoryBytes;

@end
