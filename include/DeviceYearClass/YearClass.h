//
//  YearClass.h
//
//  Copyright (c) PocketGems Inc. All rights reserved.
//

#if !defined(ANDROID)
#error Android only
#endif

#import <BridgeKit/JavaObject.h>
#import <BridgeKit/AndroidContext.h>

typedef NS_ENUM(NSInteger, FBYearClassValue)
{
    FBYC_CLASS_UNKNOWN = -1,
    FBYC_CLASS_2008 = 2008,
    FBYC_CLASS_2009,
    FBYC_CLASS_2010,
    FBYC_CLASS_2011,
    FBYC_CLASS_2012,
    FBYC_CLASS_2013,
    FBYC_CLASS_2014,
};

@interface FBYearClass : JavaObject

/**
 * Returns Year/Class of device.
 */
+ (FBYearClassValue)yearClass;

@end
