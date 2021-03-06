//
//  MTFReverseTransformedValueClass.h
//  Motif
//
//  Created by Eric Horacek on 3/9/15.
//  Copyright (c) 2015 Eric Horacek. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MTFBackwardsCompatableNullability.h"

MTF_NS_ASSUME_NONNULL_BEGIN

@protocol MTFReverseTransformedValueClass <NSObject>

+ (Class)reverseTransformedValueClass;

@end

MTF_NS_ASSUME_NONNULL_END
