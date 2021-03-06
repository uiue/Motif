//
//  NSDictionary+IntersectingKeys.m
//  Motif
//
//  Created by Eric Horacek on 3/4/15.
//  Copyright (c) 2015 Eric Horacek. All rights reserved.
//

#import "NSDictionary+IntersectingKeys.h"

@implementation NSDictionary (IntersectingKeys)

- (NSSet *)mtf_intersectingKeysWithDictionary:(NSDictionary *)dictionary {
    NSParameterAssert(dictionary);
    
    if (!dictionary) {
        return nil;
    }
    
    NSSet *selfKeys = [NSSet setWithArray:self.allKeys];
    NSSet *dictionaryKeys = [NSSet setWithArray:dictionary.allKeys];
    
    if ([selfKeys intersectsSet:dictionaryKeys]) {
        NSMutableSet *intersectingKeys = [selfKeys mutableCopy];
        [intersectingKeys intersectSet:dictionaryKeys];
        return [intersectingKeys copy];
    }
    
    return nil;
}

@end
