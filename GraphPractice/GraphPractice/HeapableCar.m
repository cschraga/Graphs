//
//  HeapableCar.m
//  DataStructures
//
//  Created by Christian Schraga on 6/17/16.
//  Copyright © 2016 Straight Edge Digital. All rights reserved.
//

#import "HeapableCar.h"

@implementation HeapableCar

- (id) initWithMake:(NSString *)make andModel:(NSString *)model andPrice: (NSNumber *)msrp {
    self = [super init];
    
    if (self) {
        _make = make;
        _model= model;
        _msrp = msrp;
    }
    
    return self;
}

- (NSString *)describeMe {
    return [NSString stringWithFormat:@"I am a %@ %@ and cost %@", _make, _model, _msrp];
}

+ (HeapableCar *)carWithMake:(NSString *)make andModel:(NSString *)model andPrice:(NSNumber *)msrp {
    return [[HeapableCar alloc] initWithMake:make andModel:model andPrice:msrp];
}

@end
