//
//  ListNode.m
//  GraphPractice
//
//  Created by Christian Schraga on 6/23/16.
//  Copyright © 2016 Straight Edge Digital. All rights reserved.
//

#import "ListNode.h"
#import "HeapableCar.h"

@implementation ListNode

-(instancetype) initWithData:(NSObject *)data {
    self = [super init];
    
    if (self) {
        self.data = data;
    }
    
    return self;
}

+ (ListNode *)listNodeWithData:(NSObject *)data {
    return [[ListNode alloc] initWithData:data];
}

@end
